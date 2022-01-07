
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPLD_REVISION ;
 int nlm_cpld_read (int ,int ) ;

int
nlm_board_cpld_majorversion(uint64_t base)
{
 return (nlm_cpld_read(base, CPLD_REVISION) >> 8);
}
