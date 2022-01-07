
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rev_cmdline_info {int nr; struct rev_cmdline_entry* rev; } ;
struct rev_cmdline_entry {int flags; TYPE_2__* item; int name; } ;
struct object_id {int dummy; } ;
struct TYPE_6__ {int type; int oid; } ;
struct commit {TYPE_1__ object; } ;
struct TYPE_9__ {scalar_t__ nr; } ;
struct TYPE_8__ {struct commit* util; } ;
struct TYPE_7__ {int type; } ;




 scalar_t__ OBJ_TAG ;
 int UNINTERESTING ;
 char* apply_refspecs (TYPE_4__*,char*) ;
 int dwim_ref (int ,int ,struct object_id*,char**) ;
 int export_blob (int *) ;
 int extra_refs ;
 int free (char*) ;
 struct commit* get_commit (struct rev_cmdline_entry*,char*) ;
 TYPE_4__ refspecs ;
 int revision_sources ;
 char** revision_sources_at (int *,struct commit*) ;
 TYPE_3__* string_list_append (int *,char*) ;
 int string_list_remove_duplicates (int *,int ) ;
 int string_list_sort (int *) ;
 int strlen (int ) ;
 int type_name (int) ;
 int warning (char*,int ,...) ;

__attribute__((used)) static void get_tags_and_duplicates(struct rev_cmdline_info *info)
{
 int i;

 for (i = 0; i < info->nr; i++) {
  struct rev_cmdline_entry *e = info->rev + i;
  struct object_id oid;
  struct commit *commit;
  char *full_name;

  if (e->flags & UNINTERESTING)
   continue;

  if (dwim_ref(e->name, strlen(e->name), &oid, &full_name) != 1)
   continue;

  if (refspecs.nr) {
   char *private;
   private = apply_refspecs(&refspecs, full_name);
   if (private) {
    free(full_name);
    full_name = private;
   }
  }

  commit = get_commit(e, full_name);
  if (!commit) {
   warning("%s: Unexpected object of type %s, skipping.",
    e->name,
    type_name(e->item->type));
   continue;
  }

  switch(commit->object.type) {
  case 128:
   break;
  case 129:
   export_blob(&commit->object.oid);
   continue;
  default:
   warning("Tag points to object of unexpected type %s, skipping.",
    type_name(commit->object.type));
   continue;
  }





  if (e->item->type != OBJ_TAG)
   string_list_append(&extra_refs, full_name)->util = commit;

  if (!*revision_sources_at(&revision_sources, commit))
   *revision_sources_at(&revision_sources, commit) = full_name;
 }

 string_list_sort(&extra_refs);
 string_list_remove_duplicates(&extra_refs, 0);
}
