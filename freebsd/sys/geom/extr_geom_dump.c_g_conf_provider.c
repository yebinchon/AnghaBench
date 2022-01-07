
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct g_provider* uintmax_t ;
struct sbuf {int dummy; } ;
struct g_provider {int flags; struct g_provider* geom; int (* dumpconf ) (struct sbuf*,char*,struct g_provider*,int *,struct g_provider*) ;scalar_t__ stripeoffset; scalar_t__ stripesize; struct g_provider* sectorsize; scalar_t__ mediasize; int name; int ace; int acw; int acr; } ;
typedef struct g_provider* intmax_t ;


 int G_GEOM_WITHER ;
 int G_PF_WITHER ;
 int g_conf_cat_escaped (struct sbuf*,int ) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_printf (struct sbuf*,char*,struct g_provider*,...) ;
 int stub1 (struct sbuf*,char*,struct g_provider*,int *,struct g_provider*) ;

__attribute__((used)) static void
g_conf_provider(struct sbuf *sb, struct g_provider *pp)
{

 sbuf_printf(sb, "\t<provider id=\"%p\">\n", pp);
 sbuf_printf(sb, "\t  <geom ref=\"%p\"/>\n", pp->geom);
 sbuf_printf(sb, "\t  <mode>r%dw%de%d</mode>\n",
     pp->acr, pp->acw, pp->ace);
 sbuf_cat(sb, "\t  <name>");
 g_conf_cat_escaped(sb, pp->name);
 sbuf_cat(sb, "</name>\n");
 sbuf_printf(sb, "\t  <mediasize>%jd</mediasize>\n",
     (intmax_t)pp->mediasize);
 sbuf_printf(sb, "\t  <sectorsize>%u</sectorsize>\n", pp->sectorsize);
 sbuf_printf(sb, "\t  <stripesize>%ju</stripesize>\n", (uintmax_t)pp->stripesize);
 sbuf_printf(sb, "\t  <stripeoffset>%ju</stripeoffset>\n", (uintmax_t)pp->stripeoffset);
 if (pp->flags & G_PF_WITHER)
  sbuf_cat(sb, "\t  <wither/>\n");
 else if (pp->geom->flags & G_GEOM_WITHER)
  ;
 else if (pp->geom->dumpconf != ((void*)0)) {
  sbuf_cat(sb, "\t  <config>\n");
  pp->geom->dumpconf(sb, "\t    ", pp->geom, ((void*)0), pp);
  sbuf_cat(sb, "\t  </config>\n");
 }
 sbuf_cat(sb, "\t</provider>\n");
}
