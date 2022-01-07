
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {size_t sc_proto; } ;
struct TYPE_2__ {int (* pr_stop ) (struct lagg_softc*) ;} ;


 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_softc*) ;

__attribute__((used)) static void
lagg_proto_stop(struct lagg_softc *sc)
{

 if (lagg_protos[sc->sc_proto].pr_stop != ((void*)0))
  lagg_protos[sc->sc_proto].pr_stop(sc);
}
