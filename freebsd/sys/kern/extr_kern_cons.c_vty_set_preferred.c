
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VTY_SC ;
 unsigned int VTY_VT ;
 unsigned int vty_prefer ;

void
vty_set_preferred(unsigned vty)
{

 vty_prefer = vty;

 vty_prefer &= ~VTY_SC;


 vty_prefer &= ~VTY_VT;

}
