
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_geom_alias {char const* ga_alias; } ;
struct g_geom {int aliases; } ;


 int LIST_INSERT_HEAD (int *,struct g_geom_alias*,int ) ;
 int M_WAITOK ;
 scalar_t__ g_malloc (scalar_t__,int ) ;
 int ga_next ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

void
g_geom_add_alias(struct g_geom *gp, const char *alias)
{
 struct g_geom_alias *gap;

 gap = (struct g_geom_alias *)g_malloc(
  sizeof(struct g_geom_alias) + strlen(alias) + 1, M_WAITOK);
 strcpy((char *)(gap + 1), alias);
 gap->ga_alias = (const char *)(gap + 1);
 LIST_INSERT_HEAD(&gp->aliases, gap, ga_next);
}
