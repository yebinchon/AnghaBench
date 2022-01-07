
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strategy {int attr; int * name; } ;
struct cmdnames {int cnt; struct cmdname** names; } ;
struct cmdname {char* name; size_t len; } ;


 int ARRAY_SIZE (struct strategy*) ;
 int NO_TRIVIAL ;
 char* _ (char*) ;
 int add_cmdname (struct cmdnames*,char*,size_t) ;
 struct strategy* all_strategy ;
 int exclude_cmds (struct cmdnames*,struct cmdnames*) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int is_in_cmdlist (struct cmdnames*,char const*) ;
 int load_command_list (char*,struct cmdnames*,struct cmdnames*) ;
 int memset (struct cmdnames*,int ,int) ;
 int stderr ;
 int strcmp (char const*,int *) ;
 int strncmp (char*,int *,size_t) ;
 struct strategy* xcalloc (int,int) ;
 int * xstrdup (char const*) ;

__attribute__((used)) static struct strategy *get_strategy(const char *name)
{
 int i;
 struct strategy *ret;
 static struct cmdnames main_cmds, other_cmds;
 static int loaded;

 if (!name)
  return ((void*)0);

 for (i = 0; i < ARRAY_SIZE(all_strategy); i++)
  if (!strcmp(name, all_strategy[i].name))
   return &all_strategy[i];

 if (!loaded) {
  struct cmdnames not_strategies;
  loaded = 1;

  memset(&not_strategies, 0, sizeof(struct cmdnames));
  load_command_list("git-merge-", &main_cmds, &other_cmds);
  for (i = 0; i < main_cmds.cnt; i++) {
   int j, found = 0;
   struct cmdname *ent = main_cmds.names[i];
   for (j = 0; j < ARRAY_SIZE(all_strategy); j++)
    if (!strncmp(ent->name, all_strategy[j].name, ent->len)
      && !all_strategy[j].name[ent->len])
     found = 1;
   if (!found)
    add_cmdname(&not_strategies, ent->name, ent->len);
  }
  exclude_cmds(&main_cmds, &not_strategies);
 }
 if (!is_in_cmdlist(&main_cmds, name) && !is_in_cmdlist(&other_cmds, name)) {
  fprintf(stderr, _("Could not find merge strategy '%s'.\n"), name);
  fprintf(stderr, _("Available strategies are:"));
  for (i = 0; i < main_cmds.cnt; i++)
   fprintf(stderr, " %s", main_cmds.names[i]->name);
  fprintf(stderr, ".\n");
  if (other_cmds.cnt) {
   fprintf(stderr, _("Available custom strategies are:"));
   for (i = 0; i < other_cmds.cnt; i++)
    fprintf(stderr, " %s", other_cmds.names[i]->name);
   fprintf(stderr, ".\n");
  }
  exit(1);
 }

 ret = xcalloc(1, sizeof(struct strategy));
 ret->name = xstrdup(name);
 ret->attr = NO_TRIVIAL;
 return ret;
}
