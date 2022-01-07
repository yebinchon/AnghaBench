
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;
struct tag {TYPE_1__* tagged; TYPE_2__ object; } ;
struct object_id {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 scalar_t__ OBJ_TAG ;
 int _ (char*) ;
 int add_object_entry (int *,scalar_t__,int *,int ) ;
 int die (int ,int ) ;
 struct tag* lookup_tag (int ,struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 scalar_t__ packlist_find (int *,struct object_id const*) ;
 scalar_t__ parse_tag (struct tag*) ;
 int the_repository ;
 int to_pack ;

__attribute__((used)) static void add_tag_chain(const struct object_id *oid)
{
 struct tag *tag;
 if (packlist_find(&to_pack, oid))
  return;

 tag = lookup_tag(the_repository, oid);
 while (1) {
  if (!tag || parse_tag(tag) || !tag->tagged)
   die(_("unable to pack objects reachable from tag %s"),
       oid_to_hex(oid));

  add_object_entry(&tag->object.oid, OBJ_TAG, ((void*)0), 0);

  if (tag->tagged->type != OBJ_TAG)
   return;

  tag = (struct tag *)tag->tagged;
 }
}
