
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
typedef TYPE_1__ scr_stat ;


 int MOUSE_CUTTING ;
 int MOUSE_VISIBLE ;

__attribute__((used)) static void
mouse_cut_end(scr_stat *scp)
{
    if (scp->status & MOUSE_VISIBLE)
 scp->status &= ~MOUSE_CUTTING;
}
