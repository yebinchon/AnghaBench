
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;


 int CPLD_CTRL_STATUS ;
 int nlm_cpld_read (int ,int ) ;

int
nlm_board_cpld_dboard_type(uint64_t base, int slot)
{
 uint16_t val;
 int shift = 0;

 switch (slot) {
 case 0: shift = 0; break;
 case 1: shift = 4; break;
 case 2: shift = 2; break;
 case 3: shift = 6; break;
 }
 val = nlm_cpld_read(base, CPLD_CTRL_STATUS) >> shift;
 return (val & 0x3);
}
