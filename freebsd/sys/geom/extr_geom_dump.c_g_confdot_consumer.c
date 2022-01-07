
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct g_consumer {scalar_t__ provider; int ace; int acw; int acr; } ;


 int sbuf_printf (struct sbuf*,char*,struct g_consumer*,scalar_t__,...) ;

__attribute__((used)) static void
g_confdot_consumer(struct sbuf *sb, struct g_consumer *cp)
{

 sbuf_printf(sb, "z%p [label=\"r%dw%de%d\"];\n",
     cp, cp->acr, cp->acw, cp->ace);
 if (cp->provider)
  sbuf_printf(sb, "z%p -> z%p;\n", cp, cp->provider);
}
