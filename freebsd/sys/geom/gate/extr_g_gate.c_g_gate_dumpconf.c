
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_gate_softc* softc; } ;
struct g_gate_softc {char* sc_unit; int sc_flags; char* sc_timeout; char* sc_info; char* sc_queue_count; char* sc_queue_size; char* sc_ref; TYPE_2__* sc_readcons; scalar_t__ sc_readoffset; } ;
struct g_consumer {int dummy; } ;
typedef char* intmax_t ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {char* name; } ;


 int G_GATE_FLAG_READONLY ;
 int G_GATE_FLAG_WRITEONLY ;
 struct g_gate_softc* g_gate_hold (char*,int *) ;
 int g_gate_release (struct g_gate_softc*) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int sbuf_printf (struct sbuf*,char*,char const*,char*) ;

__attribute__((used)) static void
g_gate_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_gate_softc *sc;

 sc = gp->softc;
 if (sc == ((void*)0) || pp != ((void*)0) || cp != ((void*)0))
  return;
 sc = g_gate_hold(sc->sc_unit, ((void*)0));
 if (sc == ((void*)0))
  return;
 if ((sc->sc_flags & G_GATE_FLAG_READONLY) != 0) {
  sbuf_printf(sb, "%s<access>%s</access>\n", indent, "read-only");
 } else if ((sc->sc_flags & G_GATE_FLAG_WRITEONLY) != 0) {
  sbuf_printf(sb, "%s<access>%s</access>\n", indent,
      "write-only");
 } else {
  sbuf_printf(sb, "%s<access>%s</access>\n", indent,
      "read-write");
 }
 if (sc->sc_readcons != ((void*)0)) {
  sbuf_printf(sb, "%s<read_offset>%jd</read_offset>\n",
      indent, (intmax_t)sc->sc_readoffset);
  sbuf_printf(sb, "%s<read_provider>%s</read_provider>\n",
      indent, sc->sc_readcons->provider->name);
 }
 sbuf_printf(sb, "%s<timeout>%u</timeout>\n", indent, sc->sc_timeout);
 sbuf_printf(sb, "%s<info>%s</info>\n", indent, sc->sc_info);
 sbuf_printf(sb, "%s<queue_count>%u</queue_count>\n", indent,
     sc->sc_queue_count);
 sbuf_printf(sb, "%s<queue_size>%u</queue_size>\n", indent,
     sc->sc_queue_size);
 sbuf_printf(sb, "%s<ref>%u</ref>\n", indent, sc->sc_ref);
 sbuf_printf(sb, "%s<unit>%d</unit>\n", indent, sc->sc_unit);
 g_topology_unlock();
 g_gate_release(sc);
 g_topology_lock();
}
