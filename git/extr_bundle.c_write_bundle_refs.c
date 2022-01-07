
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nr; struct object_array_entry* objects; } ;
struct rev_info {int repo; TYPE_1__ pending; } ;
struct object_id {int dummy; } ;
struct object_array_entry {char const* name; TYPE_3__* item; } ;
struct object {int flags; } ;
struct TYPE_6__ {int flags; scalar_t__ type; int oid; } ;
struct commit {TYPE_3__ object; } ;
struct TYPE_5__ {int hexsz; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TAG ;
 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 int SHOWN ;
 int UNINTERESTING ;
 int _ (char*) ;
 int add_pending_object (struct rev_info*,struct object*,char*) ;
 int dwim_ref (char const*,int,struct object_id*,char**) ;
 int free (char*) ;
 int is_tag_in_date_range (TYPE_3__*,struct rev_info*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 char* oid_to_hex (int *) ;
 int oideq (struct object_id*,int *) ;
 struct object* parse_object_or_die (struct object_id*,char*) ;
 scalar_t__ read_ref_full (char const*,int ,struct object_id*,int*) ;
 int strlen (char const*) ;
 TYPE_2__* the_hash_algo ;
 int warning (int ,char*) ;
 int write_or_die (int,char const*,int) ;

__attribute__((used)) static int write_bundle_refs(int bundle_fd, struct rev_info *revs)
{
 int i;
 int ref_count = 0;

 for (i = 0; i < revs->pending.nr; i++) {
  struct object_array_entry *e = revs->pending.objects + i;
  struct object_id oid;
  char *ref;
  const char *display_ref;
  int flag;

  if (e->item->flags & UNINTERESTING)
   continue;
  if (dwim_ref(e->name, strlen(e->name), &oid, &ref) != 1)
   goto skip_write_ref;
  if (read_ref_full(e->name, RESOLVE_REF_READING, &oid, &flag))
   flag = 0;
  display_ref = (flag & REF_ISSYMREF) ? e->name : ref;

  if (e->item->type == OBJ_TAG &&
    !is_tag_in_date_range(e->item, revs)) {
   e->item->flags |= UNINTERESTING;
   goto skip_write_ref;
  }
  if (!(e->item->flags & SHOWN) && e->item->type == OBJ_COMMIT) {
   warning(_("ref '%s' is excluded by the rev-list options"),
    e->name);
   goto skip_write_ref;
  }






  if (!oideq(&oid, &e->item->oid)) {





   struct commit *one = lookup_commit_reference(revs->repo, &oid);
   struct object *obj;

   if (e->item == &(one->object)) {
    obj = parse_object_or_die(&oid, e->name);
    obj->flags |= SHOWN;
    add_pending_object(revs, obj, e->name);
   }
   goto skip_write_ref;
  }

  ref_count++;
  write_or_die(bundle_fd, oid_to_hex(&e->item->oid), the_hash_algo->hexsz);
  write_or_die(bundle_fd, " ", 1);
  write_or_die(bundle_fd, display_ref, strlen(display_ref));
  write_or_die(bundle_fd, "\n", 1);
 skip_write_ref:
  free(ref);
 }


 write_or_die(bundle_fd, "\n", 1);
 return ref_count;
}
