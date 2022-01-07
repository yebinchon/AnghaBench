
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {char* new_name; char* old_name; int conflicted_threeway; int * threeway_stage; scalar_t__ is_new; int old_mode; int old_oid_prefix; int new_mode; scalar_t__ is_delete; } ;
struct object_id {int dummy; } ;
struct image {char* buf; int len; } ;
struct cache_entry {int dummy; } ;
struct apply_state {scalar_t__ apply_verbosity; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISGITLINK (int ) ;
 char* _ (char*) ;
 scalar_t__ apply_fragments (struct apply_state*,struct image*,struct patch*) ;
 int blob_type ;
 int clear_image (struct image*) ;
 int error (char*,...) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ get_oid (int ,struct object_id*) ;
 scalar_t__ load_current (struct apply_state*,struct image*,struct patch*) ;
 scalar_t__ load_preimage (struct apply_state*,struct image*,struct patch*,struct stat*,struct cache_entry const*) ;
 int oidclr (int *) ;
 int oidcpy (int *,struct object_id*) ;
 int prepare_image (struct image*,char*,size_t,int) ;
 scalar_t__ read_blob_object (struct strbuf*,struct object_id*,int ) ;
 int stderr ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 int three_way_merge (struct apply_state*,struct image*,char*,struct object_id*,struct object_id*,struct object_id*) ;
 scalar_t__ verbosity_silent ;
 int write_object_file (char*,int ,int ,struct object_id*) ;

__attribute__((used)) static int try_threeway(struct apply_state *state,
   struct image *image,
   struct patch *patch,
   struct stat *st,
   const struct cache_entry *ce)
{
 struct object_id pre_oid, post_oid, our_oid;
 struct strbuf buf = STRBUF_INIT;
 size_t len;
 int status;
 char *img;
 struct image tmp_image;


 if (patch->is_delete ||
     S_ISGITLINK(patch->old_mode) || S_ISGITLINK(patch->new_mode))
  return -1;


 if (patch->is_new)
  write_object_file("", 0, blob_type, &pre_oid);
 else if (get_oid(patch->old_oid_prefix, &pre_oid) ||
   read_blob_object(&buf, &pre_oid, patch->old_mode))
  return error(_("repository lacks the necessary blob to fall back on 3-way merge."));

 if (state->apply_verbosity > verbosity_silent)
  fprintf(stderr, _("Falling back to three-way merge...\n"));

 img = strbuf_detach(&buf, &len);
 prepare_image(&tmp_image, img, len, 1);

 if (apply_fragments(state, &tmp_image, patch) < 0) {
  clear_image(&tmp_image);
  return -1;
 }

 write_object_file(tmp_image.buf, tmp_image.len, blob_type, &post_oid);
 clear_image(&tmp_image);


 if (patch->is_new) {
  if (load_current(state, &tmp_image, patch))
   return error(_("cannot read the current contents of '%s'"),
         patch->new_name);
 } else {
  if (load_preimage(state, &tmp_image, patch, st, ce))
   return error(_("cannot read the current contents of '%s'"),
         patch->old_name);
 }
 write_object_file(tmp_image.buf, tmp_image.len, blob_type, &our_oid);
 clear_image(&tmp_image);


 status = three_way_merge(state, image, patch->new_name,
     &pre_oid, &our_oid, &post_oid);
 if (status < 0) {
  if (state->apply_verbosity > verbosity_silent)
   fprintf(stderr,
    _("Failed to fall back on three-way merge...\n"));
  return status;
 }

 if (status) {
  patch->conflicted_threeway = 1;
  if (patch->is_new)
   oidclr(&patch->threeway_stage[0]);
  else
   oidcpy(&patch->threeway_stage[0], &pre_oid);
  oidcpy(&patch->threeway_stage[1], &our_oid);
  oidcpy(&patch->threeway_stage[2], &post_oid);
  if (state->apply_verbosity > verbosity_silent)
   fprintf(stderr,
    _("Applied patch to '%s' with conflicts.\n"),
    patch->new_name);
 } else {
  if (state->apply_verbosity > verbosity_silent)
   fprintf(stderr,
    _("Applied patch to '%s' cleanly.\n"),
    patch->new_name);
 }
 return 0;
}
