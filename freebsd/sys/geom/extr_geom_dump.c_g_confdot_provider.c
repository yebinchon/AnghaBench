
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct sbuf {int dummy; } ;
struct g_provider {scalar_t__ stripesize; int sectorsize; int error; int ace; int acw; int acr; int name; } ;


 int sbuf_printf (struct sbuf*,char*,struct g_provider*,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
g_confdot_provider(struct sbuf *sb, struct g_provider *pp)
{

 sbuf_printf(sb, "z%p [shape=hexagon,label=\"%s\\nr%dw%de%d\\nerr#%d\\n"
     "sector=%u\\nstripe=%ju\"];\n", pp, pp->name, pp->acr, pp->acw,
     pp->ace, pp->error, pp->sectorsize, (uintmax_t)pp->stripesize);
}
