
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ifnet {TYPE_2__* if_softc; } ;
struct TYPE_5__ {TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_4__ {int * sys; } ;


 int CP_LOCK (int *) ;
 int CP_UNLOCK (int *) ;
 int cp_start (TYPE_2__*) ;

__attribute__((used)) static void cp_ifstart (struct ifnet *ifp)
{
 drv_t *d = ifp->if_softc;
 bdrv_t *bd = d->board->sys;

 CP_LOCK (bd);
 cp_start (d);
 CP_UNLOCK (bd);
}
