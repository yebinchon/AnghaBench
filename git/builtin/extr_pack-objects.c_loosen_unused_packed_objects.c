
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct packed_git {scalar_t__ num_objects; int mtime; scalar_t__ pack_keep_in_core; scalar_t__ pack_keep; int pack_local; struct packed_git* next; } ;
struct object_id {int dummy; } ;


 int _ (char*) ;
 int die (int ) ;
 scalar_t__ force_object_loose (struct object_id*,int ) ;
 struct packed_git* get_all_packs (int ) ;
 int has_sha1_pack_kept_or_nonlocal (struct object_id*) ;
 int loosened_object_can_be_discarded (struct object_id*,int ) ;
 int nth_packed_object_oid (struct object_id*,struct packed_git*,scalar_t__) ;
 scalar_t__ open_pack_index (struct packed_git*) ;
 int packlist_find (int *,struct object_id*) ;
 int the_repository ;
 int to_pack ;

__attribute__((used)) static void loosen_unused_packed_objects(void)
{
 struct packed_git *p;
 uint32_t i;
 struct object_id oid;

 for (p = get_all_packs(the_repository); p; p = p->next) {
  if (!p->pack_local || p->pack_keep || p->pack_keep_in_core)
   continue;

  if (open_pack_index(p))
   die(_("cannot open pack index"));

  for (i = 0; i < p->num_objects; i++) {
   nth_packed_object_oid(&oid, p, i);
   if (!packlist_find(&to_pack, &oid) &&
       !has_sha1_pack_kept_or_nonlocal(&oid) &&
       !loosened_object_can_be_discarded(&oid, p->mtime))
    if (force_object_loose(&oid, p->mtime))
     die(_("unable to force loose object"));
  }
 }
}
