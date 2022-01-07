
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_eli_softc* softc; } ;
struct g_eli_softc {int sc_flags; char* sc_nkey; char* sc_version; int sc_crypto; char* sc_ekeylen; int sc_ealgo; int sc_aalgo; scalar_t__ sc_ekeys_allocated; scalar_t__ sc_ekeys_total; } ;
struct g_consumer {int dummy; } ;


 int ADD_FLAG (int,char*) ;


 int G_ELI_FLAG_AUTH ;
 int G_ELI_FLAG_AUTORESIZE ;
 int G_ELI_FLAG_BOOT ;
 int G_ELI_FLAG_DESTROY ;
 int G_ELI_FLAG_GELIBOOT ;
 int G_ELI_FLAG_GELIDISPLAYPASS ;
 int G_ELI_FLAG_NATIVE_BYTE_ORDER ;
 int G_ELI_FLAG_NODELETE ;
 int G_ELI_FLAG_ONETIME ;
 int G_ELI_FLAG_RO ;
 int G_ELI_FLAG_RW_DETACH ;
 int G_ELI_FLAG_SINGLE_KEY ;
 int G_ELI_FLAG_SUSPEND ;
 int G_ELI_FLAG_WOPEN ;
 int G_ELI_FLAG_WO_DETACH ;
 char* g_eli_algo2str (int ) ;
 int g_topology_assert () ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_eli_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_eli_softc *sc;

 g_topology_assert();
 sc = gp->softc;
 if (sc == ((void*)0))
  return;
 if (pp != ((void*)0) || cp != ((void*)0))
  return;

 sbuf_printf(sb, "%s<KeysTotal>%ju</KeysTotal>\n", indent,
     (uintmax_t)sc->sc_ekeys_total);
 sbuf_printf(sb, "%s<KeysAllocated>%ju</KeysAllocated>\n", indent,
     (uintmax_t)sc->sc_ekeys_allocated);
 sbuf_printf(sb, "%s<Flags>", indent);
 if (sc->sc_flags == 0)
  sbuf_cat(sb, "NONE");
 else {
  int first = 1;
  do { if (sc->sc_flags & (G_ELI_FLAG_SUSPEND)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "SUSPEND"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_SINGLE_KEY)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "SINGLE-KEY"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_NATIVE_BYTE_ORDER)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "NATIVE-BYTE-ORDER"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_ONETIME)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "ONETIME"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_BOOT)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "BOOT"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_WO_DETACH)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "W-DETACH"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_RW_DETACH)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "RW-DETACH"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_AUTH)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "AUTH"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_WOPEN)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "W-OPEN"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_DESTROY)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "DESTROY"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_RO)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "READ-ONLY"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_NODELETE)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "NODELETE"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_GELIBOOT)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "GELIBOOT"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_GELIDISPLAYPASS)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "GELIDISPLAYPASS"); } } while (0);
  do { if (sc->sc_flags & (G_ELI_FLAG_AUTORESIZE)) { if (!first) sbuf_cat(sb, ", "); else first = 0; sbuf_cat(sb, "AUTORESIZE"); } } while (0);

 }
 sbuf_cat(sb, "</Flags>\n");

 if (!(sc->sc_flags & G_ELI_FLAG_ONETIME)) {
  sbuf_printf(sb, "%s<UsedKey>%u</UsedKey>\n", indent,
      sc->sc_nkey);
 }
 sbuf_printf(sb, "%s<Version>%u</Version>\n", indent, sc->sc_version);
 sbuf_printf(sb, "%s<Crypto>", indent);
 switch (sc->sc_crypto) {
 case 129:
  sbuf_cat(sb, "hardware");
  break;
 case 128:
  sbuf_cat(sb, "software");
  break;
 default:
  sbuf_cat(sb, "UNKNOWN");
  break;
 }
 sbuf_cat(sb, "</Crypto>\n");
 if (sc->sc_flags & G_ELI_FLAG_AUTH) {
  sbuf_printf(sb,
      "%s<AuthenticationAlgorithm>%s</AuthenticationAlgorithm>\n",
      indent, g_eli_algo2str(sc->sc_aalgo));
 }
 sbuf_printf(sb, "%s<KeyLength>%u</KeyLength>\n", indent,
     sc->sc_ekeylen);
 sbuf_printf(sb, "%s<EncryptionAlgorithm>%s</EncryptionAlgorithm>\n",
     indent, g_eli_algo2str(sc->sc_ealgo));
 sbuf_printf(sb, "%s<State>%s</State>\n", indent,
     (sc->sc_flags & G_ELI_FLAG_SUSPEND) ? "SUSPENDED" : "ACTIVE");
}
