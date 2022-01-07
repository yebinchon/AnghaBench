
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote {int name; } ;
struct known_remotes {struct known_remote* list; TYPE_1__* to_delete; } ;
struct known_remote {struct known_remote* next; struct remote* remote; } ;
struct TYPE_2__ {int name; } ;


 int strcmp (int ,int ) ;
 struct known_remote* xmalloc (int) ;

__attribute__((used)) static int add_known_remote(struct remote *remote, void *cb_data)
{
 struct known_remotes *all = cb_data;
 struct known_remote *r;

 if (!strcmp(all->to_delete->name, remote->name))
  return 0;

 r = xmalloc(sizeof(*r));
 r->remote = remote;
 r->next = all->list;
 all->list = r;
 return 0;
}
