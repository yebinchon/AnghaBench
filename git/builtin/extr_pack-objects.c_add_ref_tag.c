
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int add_tag_chain (struct object_id const*) ;
 scalar_t__ packlist_find (int *,struct object_id*) ;
 int peel_ref (char const*,struct object_id*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int to_pack ;

__attribute__((used)) static int add_ref_tag(const char *path, const struct object_id *oid, int flag, void *cb_data)
{
 struct object_id peeled;

 if (starts_with(path, "refs/tags/") &&
     !peel_ref(path, &peeled) &&
     packlist_find(&to_pack, &peeled))
  add_tag_chain(oid);
 return 0;
}
