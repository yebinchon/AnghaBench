
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct g_sched_softc {struct g_gsched* sc_gsched; } ;
struct g_provider {int dummy; } ;
struct g_gsched {char* gs_name; int (* gs_dumpconf ) (struct sbuf*,char const*,struct g_geom*,struct g_consumer*,struct g_provider*) ;} ;
struct g_geom {struct g_sched_softc* softc; } ;
struct g_consumer {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*,char*) ;
 int stub1 (struct sbuf*,char const*,struct g_geom*,struct g_consumer*,struct g_provider*) ;

__attribute__((used)) static void
g_sched_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_sched_softc *sc = gp->softc;
 struct g_gsched *gsp = sc->sc_gsched;
 if (indent == ((void*)0)) {
  sbuf_printf(sb, " algo %s", gsp ? gsp->gs_name : "--");
 }
 if (gsp != ((void*)0) && gsp->gs_dumpconf)
  gsp->gs_dumpconf(sb, indent, gp, cp, pp);
}
