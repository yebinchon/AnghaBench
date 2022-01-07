
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {int is_binary; int old_name; int * fragments; int old_mode; int resultsize; int result; } ;
struct image {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int SUBMODULE_PATCH_WITHOUT_INDEX ;
 int _ (char*) ;
 int error (int ,int ) ;
 int free_fragment_list (int *) ;
 int load_patch_target (struct apply_state*,struct strbuf*,struct cache_entry const*,struct stat*,struct patch*,int ,int ) ;
 int prepare_image (struct image*,char*,size_t,int) ;
 struct patch* previous_patch (struct apply_state*,struct patch*,int*) ;
 int strbuf_add (struct strbuf*,int ,int ) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;

__attribute__((used)) static int load_preimage(struct apply_state *state,
    struct image *image,
    struct patch *patch, struct stat *st,
    const struct cache_entry *ce)
{
 struct strbuf buf = STRBUF_INIT;
 size_t len;
 char *img;
 struct patch *previous;
 int status;

 previous = previous_patch(state, patch, &status);
 if (status)
  return error(_("path %s has been renamed/deleted"),
        patch->old_name);
 if (previous) {

  strbuf_add(&buf, previous->result, previous->resultsize);
 } else {
  status = load_patch_target(state, &buf, ce, st, patch,
        patch->old_name, patch->old_mode);
  if (status < 0)
   return status;
  else if (status == SUBMODULE_PATCH_WITHOUT_INDEX) {






   free_fragment_list(patch->fragments);
   patch->fragments = ((void*)0);
  } else if (status) {
   return error(_("failed to read %s"), patch->old_name);
  }
 }

 img = strbuf_detach(&buf, &len);
 prepare_image(image, img, len, !patch->is_binary);
 return 0;
}
