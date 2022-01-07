
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_cb {int flags; int prefix; } ;
struct cache_entry {int name; } ;


 int sync_submodule (int ,int ,int ) ;

__attribute__((used)) static void sync_submodule_cb(const struct cache_entry *list_item, void *cb_data)
{
 struct sync_cb *info = cb_data;
 sync_submodule(list_item->name, info->prefix, info->flags);
}
