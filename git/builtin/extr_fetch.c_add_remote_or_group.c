
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int nr; } ;
struct remote_group_data {char const* name; struct string_list* list; } ;
struct remote {int name; } ;


 int get_remote_group ;
 int git_config (int ,struct remote_group_data*) ;
 struct remote* remote_get (char const*) ;
 int remote_is_configured (struct remote*,int ) ;
 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static int add_remote_or_group(const char *name, struct string_list *list)
{
 int prev_nr = list->nr;
 struct remote_group_data g;
 g.name = name; g.list = list;

 git_config(get_remote_group, &g);
 if (list->nr == prev_nr) {
  struct remote *remote = remote_get(name);
  if (!remote_is_configured(remote, 0))
   return 0;
  string_list_append(list, remote->name);
 }
 return 1;
}
