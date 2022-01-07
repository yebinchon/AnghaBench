
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {size_t sc_proto; } ;
struct lagg_port {int dummy; } ;
struct TYPE_2__ {int (* pr_portreq ) (struct lagg_port*,void*) ;} ;


 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_port*,void*) ;

__attribute__((used)) static void
lagg_proto_portreq(struct lagg_softc *sc, struct lagg_port *lp, void *v)
{

 if (lagg_protos[sc->sc_proto].pr_portreq != ((void*)0))
  lagg_protos[sc->sc_proto].pr_portreq(lp, v);
}
