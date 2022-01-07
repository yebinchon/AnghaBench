
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {size_t sc_proto; } ;
struct TYPE_2__ {int (* pr_request ) (struct lagg_softc*,void*) ;} ;


 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_softc*,void*) ;

__attribute__((used)) static void
lagg_proto_request(struct lagg_softc *sc, void *v)
{

 if (lagg_protos[sc->sc_proto].pr_request != ((void*)0))
  lagg_protos[sc->sc_proto].pr_request(sc, v);
}
