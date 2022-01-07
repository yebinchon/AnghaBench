
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int adp; } ;


 int vidd_clear (int ) ;

__attribute__((used)) static void
gfb_clear(scr_stat *scp, int c, int attr)
{
 vidd_clear(scp->sc->adp);
}
