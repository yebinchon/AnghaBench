
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int adp; } ;


 int vidd_set_border (int ,int) ;

__attribute__((used)) static void
vga_grborder(scr_stat *scp, int color)
{
 vidd_set_border(scp->sc->adp, color);
}
