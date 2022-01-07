
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_extra_header {int len; int value; } ;
struct commit {int dummy; } ;
struct check_mergetag_data {char** argv; int argc; } ;


 int OBJ_TAG ;
 int _ (char*) ;
 int error (int ,char const*,...) ;
 scalar_t__ get_oid (char*,struct object_id*) ;
 int get_tagged_oid (struct tag*) ;
 int hash_object_file (int ,int ,int ,struct object_id*) ;
 struct tag* lookup_tag (int ,struct object_id*) ;
 char* oid_to_hex (struct object_id*) ;
 scalar_t__ oideq (int ,struct object_id*) ;
 scalar_t__ parse_tag_buffer (int ,struct tag*,int ,int ) ;
 int the_repository ;
 int type_name (int ) ;

__attribute__((used)) static int check_one_mergetag(struct commit *commit,
          struct commit_extra_header *extra,
          void *data)
{
 struct check_mergetag_data *mergetag_data = (struct check_mergetag_data *)data;
 const char *ref = mergetag_data->argv[0];
 struct object_id tag_oid;
 struct tag *tag;
 int i;

 hash_object_file(extra->value, extra->len, type_name(OBJ_TAG), &tag_oid);
 tag = lookup_tag(the_repository, &tag_oid);
 if (!tag)
  return error(_("bad mergetag in commit '%s'"), ref);
 if (parse_tag_buffer(the_repository, tag, extra->value, extra->len))
  return error(_("malformed mergetag in commit '%s'"), ref);


 for (i = 1; i < mergetag_data->argc; i++) {
  struct object_id oid;
  if (get_oid(mergetag_data->argv[i], &oid) < 0)
   return error(_("not a valid object name: '%s'"),
         mergetag_data->argv[i]);
  if (oideq(get_tagged_oid(tag), &oid))
   return 0;
 }

 return error(_("original commit '%s' contains mergetag '%s' that is "
         "discarded; use --edit instead of --graft"), ref,
       oid_to_hex(&tag_oid));
}
