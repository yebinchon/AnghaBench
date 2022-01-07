
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_journal_softc {int sc_name; } ;
struct g_consumer {TYPE_2__* provider; TYPE_1__* geom; } ;
typedef int name ;
struct TYPE_4__ {int name; } ;
struct TYPE_3__ {struct g_journal_softc* softc; } ;


 int GJ_DEBUG (int ,char*,char*,...) ;
 int g_journal_destroy (struct g_journal_softc*) ;
 int g_topology_assert () ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static void
g_journal_orphan(struct g_consumer *cp)
{
 struct g_journal_softc *sc;
 char name[256];
 int error;

 g_topology_assert();
 sc = cp->geom->softc;
 strlcpy(name, cp->provider->name, sizeof(name));
 GJ_DEBUG(0, "Lost provider %s.", name);
 if (sc == ((void*)0))
  return;
 error = g_journal_destroy(sc);
 if (error == 0)
  GJ_DEBUG(0, "Journal %s destroyed.", name);
 else {
  GJ_DEBUG(0, "Cannot destroy journal %s (error=%d). "
      "Destroy it manually after last close.", sc->sc_name,
      error);
 }
}
