
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {size_t sc_proto; } ;
typedef size_t lagg_proto ;
struct TYPE_2__ {int (* pr_detach ) (struct lagg_softc*) ;} ;


 size_t LAGG_PROTO_NONE ;
 int LAGG_XLOCK_ASSERT (struct lagg_softc*) ;
 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_softc*) ;

__attribute__((used)) static void
lagg_proto_detach(struct lagg_softc *sc)
{
 lagg_proto pr;

 LAGG_XLOCK_ASSERT(sc);
 pr = sc->sc_proto;
 sc->sc_proto = LAGG_PROTO_NONE;

 if (lagg_protos[pr].pr_detach != ((void*)0))
  lagg_protos[pr].pr_detach(sc);
}
