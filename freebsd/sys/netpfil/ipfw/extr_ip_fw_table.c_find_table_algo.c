
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {scalar_t__ type; int atype; } ;
struct tables_config {int algo_count; struct table_algo** algo; struct table_algo** def_algo; } ;
struct table_algo {scalar_t__ type; int name; } ;


 scalar_t__ IPFW_TABLE_MAXTYPE ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static struct table_algo *
find_table_algo(struct tables_config *tcfg, struct tid_info *ti, char *name)
{
 int i, l;
 struct table_algo *ta;

 if (ti->type > IPFW_TABLE_MAXTYPE)
  return (((void*)0));


 if (ti->atype != 0) {
  if (ti->atype > tcfg->algo_count)
   return (((void*)0));
  return (tcfg->algo[ti->atype]);
 }

 if (name == ((void*)0)) {

  return (tcfg->def_algo[ti->type]);
 }



 for (i = 1; i <= tcfg->algo_count; i++) {
  ta = tcfg->algo[i];
  l = strlen(ta->name);
  if (strncmp(name, ta->name, l) != 0)
   continue;
  if (name[l] != '\0' && name[l] != ' ')
   continue;

  if (ti->type != 0 && ti->type != ta->type)
   return (((void*)0));
  return (ta);
 }

 return (((void*)0));
}
