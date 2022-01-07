
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifnet {TYPE_1__* if_softc; } ;
struct TYPE_3__ {int * bd; } ;
typedef TYPE_1__ drv_t ;
typedef int bdrv_t ;


 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 int ct_start (TYPE_1__*) ;

__attribute__((used)) static void ct_ifstart (struct ifnet *ifp)
{
 drv_t *d = ifp->if_softc;
 bdrv_t *bd = d->bd;

 CT_LOCK (bd);
 ct_start (d);
 CT_UNLOCK (bd);
}
