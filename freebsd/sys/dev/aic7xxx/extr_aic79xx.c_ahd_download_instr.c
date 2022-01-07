
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ins_format1 {int opcode; int parity; size_t immediate; } ;
struct ins_format3 {int address; } ;
union ins_formats {int integer; int bytes; struct ins_format1 format1; struct ins_format3 format3; } ;
typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct ahd_softc {int dummy; } ;
 int SEQRAM ;
 int ahd_outsb (struct ahd_softc*,int ,int ,int) ;
 int ahd_resolve_seqaddr (struct ahd_softc*,int ) ;
 int aic_htole32 (int) ;
 int aic_le32toh (int) ;
 int panic (char*) ;
 int * seqprog ;

__attribute__((used)) static void
ahd_download_instr(struct ahd_softc *ahd, u_int instrptr, uint8_t *dconsts)
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
  fmt3_ins = &instr.format3;
  fmt3_ins->address = ahd_resolve_seqaddr(ahd, fmt3_ins->address);

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

 case 129:
 {
  int i, count;


  for (i = 0, count = 0; i < 31; i++) {
   uint32_t mask;

   mask = 0x01 << i;
   if ((instr.integer & mask) != 0)
    count++;
  }
  if ((count & 0x01) == 0)
   instr.format1.parity = 1;


  instr.integer = aic_htole32(instr.integer);
  ahd_outsb(ahd, SEQRAM, instr.bytes, 4);
  break;
 }
 default:
  panic("Unknown opcode encountered in seq program");
  break;
 }
}
