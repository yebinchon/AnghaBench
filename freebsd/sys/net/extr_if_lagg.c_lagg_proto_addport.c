
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lagg_softc {size_t sc_proto; } ;
struct lagg_port {int dummy; } ;
struct TYPE_2__ {int (* pr_addport ) (struct lagg_port*) ;} ;


 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_port*) ;

__attribute__((used)) static int
lagg_proto_addport(struct lagg_softc *sc, struct lagg_port *lp)
{

 if (lagg_protos[sc->sc_proto].pr_addport == ((void*)0))
  return (0);
 else
  return (lagg_protos[sc->sc_proto].pr_addport(lp));
}
