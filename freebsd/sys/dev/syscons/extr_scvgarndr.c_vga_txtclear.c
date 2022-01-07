
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scr; } ;
typedef TYPE_1__ scr_stat ;


 int sc_vtb_clear (int *,int,int) ;

__attribute__((used)) static void
vga_txtclear(scr_stat *scp, int c, int attr)
{
 sc_vtb_clear(&scp->scr, c, attr);
}
