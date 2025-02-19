
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ check_ref_valid (struct object_id*,struct object_id*,struct strbuf*,int) ;
 int error (int ,...) ;
 scalar_t__ export_object (struct object_id*,int,int,char*) ;
 int free (char*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 char* git_pathdup (char*) ;
 scalar_t__ import_object (struct object_id*,int,int,char*) ;
 scalar_t__ launch_editor (char*,int *,int *) ;
 int oid_object_info (int ,struct object_id*,int *) ;
 char const* oid_to_hex (struct object_id*) ;
 scalar_t__ oideq (struct object_id*,struct object_id*) ;
 int replace_object_oid (char const*,struct object_id*,char*,struct object_id*,int) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static int edit_and_replace(const char *object_ref, int force, int raw)
{
 char *tmpfile;
 enum object_type type;
 struct object_id old_oid, new_oid, prev;
 struct strbuf ref = STRBUF_INIT;

 if (get_oid(object_ref, &old_oid) < 0)
  return error(_("not a valid object name: '%s'"), object_ref);

 type = oid_object_info(the_repository, &old_oid, ((void*)0));
 if (type < 0)
  return error(_("unable to get object type for %s"),
        oid_to_hex(&old_oid));

 if (check_ref_valid(&old_oid, &prev, &ref, force)) {
  strbuf_release(&ref);
  return -1;
 }
 strbuf_release(&ref);

 tmpfile = git_pathdup("REPLACE_EDITOBJ");
 if (export_object(&old_oid, type, raw, tmpfile)) {
  free(tmpfile);
  return -1;
 }
 if (launch_editor(tmpfile, ((void*)0), ((void*)0)) < 0) {
  free(tmpfile);
  return error(_("editing object file failed"));
 }
 if (import_object(&new_oid, type, raw, tmpfile)) {
  free(tmpfile);
  return -1;
 }
 free(tmpfile);

 if (oideq(&old_oid, &new_oid))
  return error(_("new object is the same as the old one: '%s'"), oid_to_hex(&old_oid));

 return replace_object_oid(object_ref, &old_oid, "replacement", &new_oid, force);
}
