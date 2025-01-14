
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_mountver_softc {char* sc_provider_name; char* sc_ident; scalar_t__ sc_orphaned; } ;
struct g_geom {struct g_mountver_softc* softc; } ;
struct g_consumer {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,char const*,char*) ;

__attribute__((used)) static void
g_mountver_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_mountver_softc *sc;

 if (pp != ((void*)0) || cp != ((void*)0))
  return;

 sc = gp->softc;
 sbuf_printf(sb, "%s<State>%s</State>\n", indent,
     sc->sc_orphaned ? "OFFLINE" : "ONLINE");
 sbuf_printf(sb, "%s<Provider-Name>%s</Provider-Name>\n", indent, sc->sc_provider_name);
 sbuf_printf(sb, "%s<Disk-Ident>%s</Disk-Ident>\n", indent, sc->sc_ident);
}
