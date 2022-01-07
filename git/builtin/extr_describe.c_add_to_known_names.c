
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_name {int prio; int * path; int oid; scalar_t__ name_checked; struct tag* tag; int entry; int peeled; } ;


 struct commit_name* find_commit_name (struct object_id const*) ;
 int free (int *) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int names ;
 int oidcpy (int *,struct object_id const*) ;
 int oidhash (struct object_id const*) ;
 scalar_t__ replace_name (struct commit_name*,int,struct object_id const*,struct tag**) ;
 struct commit_name* xmalloc (int) ;
 int * xstrdup (char const*) ;

__attribute__((used)) static void add_to_known_names(const char *path,
          const struct object_id *peeled,
          int prio,
          const struct object_id *oid)
{
 struct commit_name *e = find_commit_name(peeled);
 struct tag *tag = ((void*)0);
 if (replace_name(e, prio, oid, &tag)) {
  if (!e) {
   e = xmalloc(sizeof(struct commit_name));
   oidcpy(&e->peeled, peeled);
   hashmap_entry_init(&e->entry, oidhash(peeled));
   hashmap_add(&names, &e->entry);
   e->path = ((void*)0);
  }
  e->tag = tag;
  e->prio = prio;
  e->name_checked = 0;
  oidcpy(&e->oid, oid);
  free(e->path);
  e->path = xstrdup(path);
 }
}
