
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ check_mergetags (struct commit*,int,char const**) ;
 int commit_type ;
 int error (int ,char const*) ;
 char* get_commit_buffer (struct commit*,unsigned long*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct commit* lookup_commit_reference (int ,struct object_id*) ;
 char const* oid_to_hex (int *) ;
 scalar_t__ oideq (int *,struct object_id*) ;
 scalar_t__ remove_signature (struct strbuf*) ;
 int replace_object_oid (char const*,int *,char*,struct object_id*,int) ;
 scalar_t__ replace_parents (struct strbuf*,int,char const**) ;
 int strbuf_add (struct strbuf*,char const*,unsigned long) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int unuse_commit_buffer (struct commit*,char const*) ;
 int warning (int ,...) ;
 scalar_t__ write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static int create_graft(int argc, const char **argv, int force, int gentle)
{
 struct object_id old_oid, new_oid;
 const char *old_ref = argv[0];
 struct commit *commit;
 struct strbuf buf = STRBUF_INIT;
 const char *buffer;
 unsigned long size;

 if (get_oid(old_ref, &old_oid) < 0)
  return error(_("not a valid object name: '%s'"), old_ref);
 commit = lookup_commit_reference(the_repository, &old_oid);
 if (!commit)
  return error(_("could not parse %s"), old_ref);

 buffer = get_commit_buffer(commit, &size);
 strbuf_add(&buf, buffer, size);
 unuse_commit_buffer(commit, buffer);

 if (replace_parents(&buf, argc - 1, &argv[1]) < 0) {
  strbuf_release(&buf);
  return -1;
 }

 if (remove_signature(&buf)) {
  warning(_("the original commit '%s' has a gpg signature"), old_ref);
  warning(_("the signature will be removed in the replacement commit!"));
 }

 if (check_mergetags(commit, argc, argv)) {
  strbuf_release(&buf);
  return -1;
 }

 if (write_object_file(buf.buf, buf.len, commit_type, &new_oid)) {
  strbuf_release(&buf);
  return error(_("could not write replacement commit for: '%s'"),
        old_ref);
 }

 strbuf_release(&buf);

 if (oideq(&commit->object.oid, &new_oid)) {
  if (gentle) {
   warning(_("graft for '%s' unnecessary"),
    oid_to_hex(&commit->object.oid));
   return 0;
  }
  return error(_("new commit is the same as the old one: '%s'"),
        oid_to_hex(&commit->object.oid));
 }

 return replace_object_oid(old_ref, &commit->object.oid,
      "replacement", &new_oid, force);
}
