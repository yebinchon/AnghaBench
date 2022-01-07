
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_journal_softc {TYPE_1__* sc_geom; } ;
struct TYPE_2__ {int name; } ;


 int GJ_DEBUG (int ,char*,int ) ;
 int M_NOWAIT ;
 int g_journal_destroy_event ;
 int g_post_event (int ,struct g_journal_softc*,int ,int *) ;

__attribute__((used)) static void
g_journal_timeout(void *arg)
{
 struct g_journal_softc *sc;

 sc = arg;
 GJ_DEBUG(0, "Timeout. Journal %s cannot be completed.",
     sc->sc_geom->name);
 g_post_event(g_journal_destroy_event, sc, M_NOWAIT, ((void*)0));
}
