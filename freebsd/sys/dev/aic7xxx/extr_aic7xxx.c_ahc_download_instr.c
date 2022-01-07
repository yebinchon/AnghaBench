
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_format1 {int opcode; int parity; size_t immediate; int source; int destination; int ret; } ;
struct ins_format3 {int address; int immediate; int source; int opcode; } ;
union ins_formats {int integer; int bytes; struct ins_format1 format1; struct ins_format3 format3; } ;
typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct patch {int dummy; } ;
struct ahc_softc {int features; } ;


 int AHC_CMD_CHAN ;
 int AHC_ULTRA2 ;
 int MIN (int,int) ;
 int SEQRAM ;
 int ahc_check_patch (struct ahc_softc*,struct patch**,int,int*) ;
 int ahc_name (struct ahc_softc*) ;
 int ahc_outsb (struct ahc_softc*,int ,int ,int) ;
 int aic_htole32 (int) ;
 int aic_le32toh (int) ;
 int panic (char*,...) ;
 struct patch* patches ;
 int * seqprog ;

__attribute__((used)) static void
ahc_download_instr(struct ahc_softc *ahc, u_int instrptr, uint8_t *dconsts)
{
 union ins_formats instr;
 struct ins_format1 *fmt1_ins;
 struct ins_format3 *fmt3_ins;
 u_int opcode;




 instr.integer = aic_le32toh(*(uint32_t*)&seqprog[instrptr * 4]);

 fmt1_ins = &instr.format1;
 fmt3_ins = ((void*)0);


 opcode = instr.format1.opcode;
 switch (opcode) {
 case 135:
 case 137:
 case 134:
 case 138:
 case 133:
 case 132:
 case 136:
 case 131:
 {
  struct patch *cur_patch;
  int address_offset;
  u_int address;
  u_int skip_addr;
  u_int i;

  fmt3_ins = &instr.format3;
  address_offset = 0;
  address = fmt3_ins->address;
  cur_patch = patches;
  skip_addr = 0;

  for (i = 0; i < address;) {

   ahc_check_patch(ahc, &cur_patch, i, &skip_addr);

   if (skip_addr > i) {
    int end_addr;

    end_addr = MIN(address, skip_addr);
    address_offset += end_addr - i;
    i = skip_addr;
   } else {
    i++;
   }
  }
  address -= address_offset;
  fmt3_ins->address = address;

 }
 case 130:
 case 140:
 case 128:
 case 141:
 case 142:
 case 139:
  if (fmt1_ins->parity != 0) {
   fmt1_ins->immediate = dconsts[fmt1_ins->immediate];
  }
  fmt1_ins->parity = 0;
  if ((ahc->features & AHC_CMD_CHAN) == 0
   && opcode == 139) {







   if (fmt1_ins->immediate != 1)
    panic("%s: BMOV not supported\n",
          ahc_name(ahc));
   fmt1_ins->opcode = 140;
   fmt1_ins->immediate = 0xff;
  }

 case 129:
  if ((ahc->features & AHC_ULTRA2) != 0) {
   int i, count;


   for (i = 0, count = 0; i < 31; i++) {
    uint32_t mask;

    mask = 0x01 << i;
    if ((instr.integer & mask) != 0)
     count++;
   }
   if ((count & 0x01) == 0)
    instr.format1.parity = 1;
  } else {

   if (fmt3_ins != ((void*)0)) {
    instr.integer =
     fmt3_ins->immediate
          | (fmt3_ins->source << 8)
          | (fmt3_ins->address << 16)
          | (fmt3_ins->opcode << 25);
   } else {
    instr.integer =
     fmt1_ins->immediate
          | (fmt1_ins->source << 8)
          | (fmt1_ins->destination << 16)
          | (fmt1_ins->ret << 24)
          | (fmt1_ins->opcode << 25);
   }
  }

  instr.integer = aic_htole32(instr.integer);
  ahc_outsb(ahc, SEQRAM, instr.bytes, 4);
  break;
 default:
  panic("Unknown opcode encountered in seq program");
  break;
 }
}
