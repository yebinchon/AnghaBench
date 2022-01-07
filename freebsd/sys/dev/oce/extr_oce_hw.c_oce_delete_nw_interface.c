
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nifs; int if_id; } ;
typedef TYPE_1__* POCE_SOFTC ;


 int atomic_dec_32 (scalar_t__*) ;
 int oce_if_del (TYPE_1__*,int ) ;

void
oce_delete_nw_interface(POCE_SOFTC sc)
{

 if (sc->nifs > 0) {
  oce_if_del(sc, sc->if_id);
  atomic_dec_32(&sc->nifs);
 }
}
