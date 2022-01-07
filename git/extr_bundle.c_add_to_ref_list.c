
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref_list {int nr; TYPE_1__* list; int alloc; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int name; int oid; } ;


 int ALLOC_GROW (TYPE_1__*,int,int ) ;
 int oidcpy (int *,struct object_id const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void add_to_ref_list(const struct object_id *oid, const char *name,
  struct ref_list *list)
{
 ALLOC_GROW(list->list, list->nr + 1, list->alloc);
 oidcpy(&list->list[list->nr].oid, oid);
 list->list[list->nr].name = xstrdup(name);
 list->nr++;
}
