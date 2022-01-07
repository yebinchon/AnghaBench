
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_2__* sc_p ;
struct TYPE_8__ {int nd_flags; } ;
struct TYPE_6__ {int lastTime; int startTime; int endTime; int elapsedTime; } ;
struct TYPE_7__ {TYPE_4__* node; int intr_ch; TYPE_1__ stats; int packets; int * output_ifp; } ;


 int EBUSY ;
 int ENXIO ;
 int NG_SOURCE_ACTIVE ;
 int getmicrotime (int *) ;
 int ng_callout (int *,TYPE_4__*,int *,int ,int ,TYPE_2__*,int ) ;
 int ng_source_intr ;
 int printf (char*) ;
 int timevalclear (int *) ;

__attribute__((used)) static int
ng_source_start(sc_p sc, uint64_t packets)
{
 if (sc->output_ifp == ((void*)0)) {
  printf("ng_source: start without iface configured\n");
  return (ENXIO);
 }

 if (sc->node->nd_flags & NG_SOURCE_ACTIVE)
  return (EBUSY);

 sc->node->nd_flags |= NG_SOURCE_ACTIVE;

 sc->packets = packets;
 timevalclear(&sc->stats.elapsedTime);
 timevalclear(&sc->stats.endTime);
 getmicrotime(&sc->stats.startTime);
 getmicrotime(&sc->stats.lastTime);
 ng_callout(&sc->intr_ch, sc->node, ((void*)0), 0,
     ng_source_intr, sc, 0);

 return (0);
}
