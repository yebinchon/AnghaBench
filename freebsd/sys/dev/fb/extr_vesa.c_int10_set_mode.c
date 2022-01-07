
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int R_AL; } ;
typedef TYPE_1__ x86regs_t ;


 int x86bios_init_regs (TYPE_1__*) ;
 int x86bios_intr (TYPE_1__*,int) ;

__attribute__((used)) static int
int10_set_mode(int mode)
{
 x86regs_t regs;

 x86bios_init_regs(&regs);
 regs.R_AL = mode;

 x86bios_intr(&regs, 0x10);

 return (0);
}
