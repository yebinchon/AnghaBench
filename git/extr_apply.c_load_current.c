
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {char* new_name; unsigned int new_mode; int is_binary; int old_name; int is_new; } ;
struct image {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {TYPE_1__* repo; } ;
struct TYPE_5__ {struct cache_entry** cache; } ;
struct TYPE_4__ {TYPE_2__* index; } ;


 int BUG (char*,int ) ;
 scalar_t__ ENOENT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ checkout_target (TYPE_2__*,struct cache_entry*,struct stat*) ;
 scalar_t__ errno ;
 int error (int ,char*) ;
 int error_errno (char*,char*) ;
 int index_name_pos (TYPE_2__*,char*,int ) ;
 int load_patch_target (struct apply_state*,struct strbuf*,struct cache_entry*,struct stat*,struct patch*,char*,unsigned int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 int prepare_image (struct image*,char*,size_t,int) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 int strlen (char*) ;
 scalar_t__ verify_index_match (struct apply_state*,struct cache_entry*,struct stat*) ;

__attribute__((used)) static int load_current(struct apply_state *state,
   struct image *image,
   struct patch *patch)
{
 struct strbuf buf = STRBUF_INIT;
 int status, pos;
 size_t len;
 char *img;
 struct stat st;
 struct cache_entry *ce;
 char *name = patch->new_name;
 unsigned mode = patch->new_mode;

 if (!patch->is_new)
  BUG("patch to %s is not a creation", patch->old_name);

 pos = index_name_pos(state->repo->index, name, strlen(name));
 if (pos < 0)
  return error(_("%s: does not exist in index"), name);
 ce = state->repo->index->cache[pos];
 if (lstat(name, &st)) {
  if (errno != ENOENT)
   return error_errno("%s", name);
  if (checkout_target(state->repo->index, ce, &st))
   return -1;
 }
 if (verify_index_match(state, ce, &st))
  return error(_("%s: does not match index"), name);

 status = load_patch_target(state, &buf, ce, &st, patch, name, mode);
 if (status < 0)
  return status;
 else if (status)
  return -1;
 img = strbuf_detach(&buf, &len);
 prepare_image(image, img, len, !patch->is_binary);
 return 0;
}
