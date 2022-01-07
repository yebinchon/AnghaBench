
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GBU_CS_BASEADDR (int) ;
 int MIPS_PHYS_TO_KSEG1 (int) ;
 int nlm_get_gbu_regbase (int) ;
 int nlm_read_gbu_reg (int,int ) ;

uint64_t nlm_board_cpld_base(int node, int chipselect)
{
 uint64_t gbubase, cpld_phys;

 gbubase = nlm_get_gbu_regbase(node);
 cpld_phys = nlm_read_gbu_reg(gbubase, GBU_CS_BASEADDR(chipselect));
 return (MIPS_PHYS_TO_KSEG1(cpld_phys << 8));
}
