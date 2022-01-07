
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* sc_p ;
struct TYPE_7__ {int nd_flags; } ;
struct TYPE_5__ {int startTime; int elapsedTime; int endTime; } ;
struct TYPE_6__ {TYPE_1__ stats; TYPE_3__* node; int intr_ch; } ;


 int NG_SOURCE_ACTIVE ;
 int getmicrotime (int *) ;
 int ng_uncallout (int *,TYPE_3__*) ;
 int timevalsub (int *,int *) ;

__attribute__((used)) static void
ng_source_stop(sc_p sc)
{
 ng_uncallout(&sc->intr_ch, sc->node);
 sc->node->nd_flags &= ~NG_SOURCE_ACTIVE;
 getmicrotime(&sc->stats.endTime);
 sc->stats.elapsedTime = sc->stats.endTime;
 timevalsub(&sc->stats.elapsedTime, &sc->stats.startTime);
}
