
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct lagg_softc {size_t sc_proto; } ;
struct lagg_port {int dummy; } ;
struct TYPE_2__ {struct mbuf* (* pr_input ) (struct lagg_softc*,struct lagg_port*,struct mbuf*) ;} ;


 TYPE_1__* lagg_protos ;
 struct mbuf* stub1 (struct lagg_softc*,struct lagg_port*,struct mbuf*) ;

__attribute__((used)) static struct mbuf *
lagg_proto_input(struct lagg_softc *sc, struct lagg_port *lp, struct mbuf *m)
{

 return (lagg_protos[sc->sc_proto].pr_input(sc, lp, m));
}
