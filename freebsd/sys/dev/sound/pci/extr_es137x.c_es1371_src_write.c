
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct es_info {int dummy; } ;


 int ES1371_DIS_P1 ;
 int ES1371_DIS_P2 ;
 int ES1371_DIS_R1 ;
 int ES1371_DIS_SRC ;
 int ES1371_REG_SMPRATE ;
 int ES1371_SRC_RAM_ADDRO (unsigned short) ;
 int ES1371_SRC_RAM_DATAO (unsigned short) ;
 int ES1371_SRC_RAM_WE ;
 int es1371_wait_src_ready (struct es_info*) ;
 int es_wr (struct es_info*,int ,int,int) ;

__attribute__((used)) static void
es1371_src_write(struct es_info *es, unsigned short reg, unsigned short data)
{
 uint32_t r;

 r = es1371_wait_src_ready(es) & (ES1371_DIS_SRC | ES1371_DIS_P1 |
     ES1371_DIS_P2 | ES1371_DIS_R1);
 r |= ES1371_SRC_RAM_ADDRO(reg) | ES1371_SRC_RAM_DATAO(data);
 es_wr(es, ES1371_REG_SMPRATE, r | ES1371_SRC_RAM_WE, 4);
}
