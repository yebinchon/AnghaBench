
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_int ;
struct sbuf {int dummy; } ;
struct g_stripe_softc {int sc_type; TYPE_1__* sc_provider; int sc_ndisks; scalar_t__ sc_stripesize; scalar_t__ sc_id; } ;
struct g_provider {int dummy; } ;
struct g_geom {struct g_stripe_softc* softc; } ;
struct g_consumer {scalar_t__ index; } ;
struct TYPE_2__ {scalar_t__ error; } ;




 int g_stripe_nvalid (struct g_stripe_softc*) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,char const*,...) ;

__attribute__((used)) static void
g_stripe_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 struct g_stripe_softc *sc;

 sc = gp->softc;
 if (sc == ((void*)0))
  return;
 if (pp != ((void*)0)) {

 } else if (cp != ((void*)0)) {
  sbuf_printf(sb, "%s<Number>%u</Number>\n", indent,
      (u_int)cp->index);
 } else {
  sbuf_printf(sb, "%s<ID>%u</ID>\n", indent, (u_int)sc->sc_id);
  sbuf_printf(sb, "%s<Stripesize>%ju</Stripesize>\n", indent,
      (uintmax_t)sc->sc_stripesize);
  sbuf_printf(sb, "%s<Type>", indent);
  switch (sc->sc_type) {
  case 129:
   sbuf_cat(sb, "AUTOMATIC");
   break;
  case 128:
   sbuf_cat(sb, "MANUAL");
   break;
  default:
   sbuf_cat(sb, "UNKNOWN");
   break;
  }
  sbuf_cat(sb, "</Type>\n");
  sbuf_printf(sb, "%s<Status>Total=%u, Online=%u</Status>\n",
      indent, sc->sc_ndisks, g_stripe_nvalid(sc));
  sbuf_printf(sb, "%s<State>", indent);
  if (sc->sc_provider != ((void*)0) && sc->sc_provider->error == 0)
   sbuf_cat(sb, "UP");
  else
   sbuf_cat(sb, "DOWN");
  sbuf_cat(sb, "</State>\n");
 }
}
