
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_journal_softc {scalar_t__ sc_id; scalar_t__ sc_jend; scalar_t__ sc_jstart; struct g_consumer* sc_jconsumer; struct g_consumer* sc_dconsumer; } ;
struct g_geom {struct g_journal_softc* softc; } ;
struct g_consumer {int dummy; } ;
typedef int intmax_t ;


 int g_topology_assert () ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_journal_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_journal_softc *sc;

 g_topology_assert();

 sc = gp->softc;
 if (sc == ((void*)0))
  return;
 if (pp != ((void*)0)) {

 } else if (cp != ((void*)0)) {
  int first = 1;

  sbuf_printf(sb, "%s<Role>", indent);
  if (cp == sc->sc_dconsumer) {
   sbuf_cat(sb, "Data");
   first = 0;
  }
  if (cp == sc->sc_jconsumer) {
   if (!first)
    sbuf_cat(sb, ",");
   sbuf_cat(sb, "Journal");
  }
  sbuf_cat(sb, "</Role>\n");
  if (cp == sc->sc_jconsumer) {
   sbuf_printf(sb, "<Jstart>%jd</Jstart>\n",
       (intmax_t)sc->sc_jstart);
   sbuf_printf(sb, "<Jend>%jd</Jend>\n",
       (intmax_t)sc->sc_jend);
  }
 } else {
  sbuf_printf(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
 }
}
