
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct fw_info {int text_len; int data_len; int sbss_len; int bss_len; int rodata_len; int start_addr; int * rodata; scalar_t__ rodata_addr; int * bss; scalar_t__ bss_addr; int * sbss; scalar_t__ sbss_addr; int * data; scalar_t__ data_addr; int * text; scalar_t__ text_addr; } ;
struct cpu_reg {scalar_t__ pc; scalar_t__ inst; scalar_t__ mips_view_base; scalar_t__ spad_base; } ;
struct bce_softc {int dummy; } ;


 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int REG_WR_IND (struct bce_softc*,scalar_t__,int ) ;
 int bce_halt_cpu (struct bce_softc*,struct cpu_reg*) ;

__attribute__((used)) static void
bce_load_cpu_fw(struct bce_softc *sc, struct cpu_reg *cpu_reg,
 struct fw_info *fw)
{
 u32 offset;

 DBENTER(BCE_VERBOSE_RESET);

    bce_halt_cpu(sc, cpu_reg);


 offset = cpu_reg->spad_base + (fw->text_addr - cpu_reg->mips_view_base);
 if (fw->text) {
  int j;

  for (j = 0; j < (fw->text_len / 4); j++, offset += 4) {
   REG_WR_IND(sc, offset, fw->text[j]);
         }
 }


 offset = cpu_reg->spad_base + (fw->data_addr - cpu_reg->mips_view_base);
 if (fw->data) {
  int j;

  for (j = 0; j < (fw->data_len / 4); j++, offset += 4) {
   REG_WR_IND(sc, offset, fw->data[j]);
  }
 }


 offset = cpu_reg->spad_base + (fw->sbss_addr - cpu_reg->mips_view_base);
 if (fw->sbss) {
  int j;

  for (j = 0; j < (fw->sbss_len / 4); j++, offset += 4) {
   REG_WR_IND(sc, offset, fw->sbss[j]);
  }
 }


 offset = cpu_reg->spad_base + (fw->bss_addr - cpu_reg->mips_view_base);
 if (fw->bss) {
  int j;

  for (j = 0; j < (fw->bss_len/4); j++, offset += 4) {
   REG_WR_IND(sc, offset, fw->bss[j]);
  }
 }


 offset = cpu_reg->spad_base +
  (fw->rodata_addr - cpu_reg->mips_view_base);
 if (fw->rodata) {
  int j;

  for (j = 0; j < (fw->rodata_len / 4); j++, offset += 4) {
   REG_WR_IND(sc, offset, fw->rodata[j]);
  }
 }


 REG_WR_IND(sc, cpu_reg->inst, 0);
 REG_WR_IND(sc, cpu_reg->pc, fw->start_addr);

 DBEXIT(BCE_VERBOSE_RESET);
}
