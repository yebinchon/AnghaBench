
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ old_name; scalar_t__ new_name; struct fragment* fragments; } ;
struct image {unsigned long len; void* buf; } ;
struct fragment {int binary_patch_method; unsigned long size; int patch; struct fragment* next; } ;
struct apply_state {scalar_t__ apply_in_reverse; } ;




 int _ (char*) ;
 int clear_image (struct image*) ;
 int error (int ,scalar_t__) ;
 void* patch_delta (void*,unsigned long,int ,unsigned long,unsigned long*) ;
 void* xmemdupz (int ,unsigned long) ;

__attribute__((used)) static int apply_binary_fragment(struct apply_state *state,
     struct image *img,
     struct patch *patch)
{
 struct fragment *fragment = patch->fragments;
 unsigned long len;
 void *dst;

 if (!fragment)
  return error(_("missing binary patch data for '%s'"),
        patch->new_name ?
        patch->new_name :
        patch->old_name);


 if (state->apply_in_reverse) {
  if (!fragment->next)
   return error(_("cannot reverse-apply a binary patch "
           "without the reverse hunk to '%s'"),
         patch->new_name
         ? patch->new_name : patch->old_name);
  fragment = fragment->next;
 }
 switch (fragment->binary_patch_method) {
 case 129:
  dst = patch_delta(img->buf, img->len, fragment->patch,
      fragment->size, &len);
  if (!dst)
   return -1;
  clear_image(img);
  img->buf = dst;
  img->len = len;
  return 0;
 case 128:
  clear_image(img);
  img->len = fragment->size;
  img->buf = xmemdupz(fragment->patch, img->len);
  return 0;
 }
 return -1;
}
