
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_cb {int flags; int prefix; } ;
struct cache_entry {int ce_flags; int oid; int name; } ;


 int status_submodule (int ,int *,int ,int ,int ) ;

__attribute__((used)) static void status_submodule_cb(const struct cache_entry *list_item,
    void *cb_data)
{
 struct status_cb *info = cb_data;
 status_submodule(list_item->name, &list_item->oid, list_item->ce_flags,
    info->prefix, info->flags);
}
