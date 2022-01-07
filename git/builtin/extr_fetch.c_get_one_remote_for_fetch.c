
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct remote {int name; int skip_default_update; } ;


 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static int get_one_remote_for_fetch(struct remote *remote, void *priv)
{
 struct string_list *list = priv;
 if (!remote->skip_default_update)
  string_list_append(list, remote->name);
 return 0;
}
