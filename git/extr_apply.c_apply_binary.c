
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch {char* old_name; char* new_name; char* old_oid_prefix; char* new_oid_prefix; } ;
struct object_id {int dummy; } ;
struct image {char* buf; unsigned long len; } ;
struct apply_state {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
struct TYPE_2__ {unsigned int hexsz; } ;


 int _ (char*) ;
 scalar_t__ apply_binary_fragment (struct apply_state*,struct image*,struct patch*) ;
 int blob_type ;
 int clear_image (struct image*) ;
 int error (int ,char const*,...) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 scalar_t__ has_object_file (struct object_id*) ;
 int hash_object_file (char*,unsigned long,int ,struct object_id*) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 char* oid_to_hex (struct object_id*) ;
 char* read_object_file (struct object_id*,int*,unsigned long*) ;
 scalar_t__ strcmp (char*,char*) ;
 unsigned int const strlen (char*) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static int apply_binary(struct apply_state *state,
   struct image *img,
   struct patch *patch)
{
 const char *name = patch->old_name ? patch->old_name : patch->new_name;
 struct object_id oid;
 const unsigned hexsz = the_hash_algo->hexsz;





 if (strlen(patch->old_oid_prefix) != hexsz ||
     strlen(patch->new_oid_prefix) != hexsz ||
     get_oid_hex(patch->old_oid_prefix, &oid) ||
     get_oid_hex(patch->new_oid_prefix, &oid))
  return error(_("cannot apply binary patch to '%s' "
          "without full index line"), name);

 if (patch->old_name) {




  hash_object_file(img->buf, img->len, blob_type, &oid);
  if (strcmp(oid_to_hex(&oid), patch->old_oid_prefix))
   return error(_("the patch applies to '%s' (%s), "
           "which does not match the "
           "current contents."),
         name, oid_to_hex(&oid));
 }
 else {

  if (img->len)
   return error(_("the patch applies to an empty "
           "'%s' but it is not empty"), name);
 }

 get_oid_hex(patch->new_oid_prefix, &oid);
 if (is_null_oid(&oid)) {
  clear_image(img);
  return 0;
 }

 if (has_object_file(&oid)) {

  enum object_type type;
  unsigned long size;
  char *result;

  result = read_object_file(&oid, &type, &size);
  if (!result)
   return error(_("the necessary postimage %s for "
           "'%s' cannot be read"),
         patch->new_oid_prefix, name);
  clear_image(img);
  img->buf = result;
  img->len = size;
 } else {





  if (apply_binary_fragment(state, img, patch))
   return error(_("binary patch does not apply to '%s'"),
         name);


  hash_object_file(img->buf, img->len, blob_type, &oid);
  if (strcmp(oid_to_hex(&oid), patch->new_oid_prefix))
   return error(_("binary patch to '%s' creates incorrect result (expecting %s, got %s)"),
    name, patch->new_oid_prefix, oid_to_hex(&oid));
 }

 return 0;
}
