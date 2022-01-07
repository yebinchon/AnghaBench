
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct lagg_softc {size_t sc_proto; } ;
struct TYPE_2__ {int (* pr_start ) (struct lagg_softc*,struct mbuf*) ;} ;


 TYPE_1__* lagg_protos ;
 int stub1 (struct lagg_softc*,struct mbuf*) ;

__attribute__((used)) static int
lagg_proto_start(struct lagg_softc *sc, struct mbuf *m)
{

 return (lagg_protos[sc->sc_proto].pr_start(sc, m));
}
