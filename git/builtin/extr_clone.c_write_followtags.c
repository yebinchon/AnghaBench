
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int old_oid; int name; struct ref* next; } ;


 int UPDATE_REFS_DIE_ON_ERR ;
 scalar_t__ ends_with (int ,char*) ;
 int has_object_file (int *) ;
 int starts_with (int ,char*) ;
 int update_ref (char const*,int ,int *,int *,int ,int ) ;

__attribute__((used)) static void write_followtags(const struct ref *refs, const char *msg)
{
 const struct ref *ref;
 for (ref = refs; ref; ref = ref->next) {
  if (!starts_with(ref->name, "refs/tags/"))
   continue;
  if (ends_with(ref->name, "^{}"))
   continue;
  if (!has_object_file(&ref->old_oid))
   continue;
  update_ref(msg, ref->name, &ref->old_oid, ((void*)0), 0,
      UPDATE_REFS_DIE_ON_ERR);
 }
}
