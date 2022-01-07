
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct image {int nr; char* buf; int len; TYPE_1__* line; int line_allocated; } ;
struct TYPE_2__ {int flag; size_t len; } ;


 int BUG (char*,int,int,int) ;
 int LINE_COMMON ;
 int assert (int) ;
 int free (int ) ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int prepare_image (struct image*,char*,size_t,int) ;
 char* xmalloc (size_t) ;

__attribute__((used)) static void update_pre_post_images(struct image *preimage,
       struct image *postimage,
       char *buf,
       size_t len, size_t postlen)
{
 int i, ctx, reduced;
 char *new_buf, *old_buf, *fixed;
 struct image fixed_preimage;






 prepare_image(&fixed_preimage, buf, len, 1);
 assert(postlen
        ? fixed_preimage.nr == preimage->nr
        : fixed_preimage.nr <= preimage->nr);
 for (i = 0; i < fixed_preimage.nr; i++)
  fixed_preimage.line[i].flag = preimage->line[i].flag;
 free(preimage->line_allocated);
 *preimage = fixed_preimage;
 old_buf = postimage->buf;
 if (postlen)
  new_buf = postimage->buf = xmalloc(postlen);
 else
  new_buf = old_buf;
 fixed = preimage->buf;

 for (i = reduced = ctx = 0; i < postimage->nr; i++) {
  size_t l_len = postimage->line[i].len;
  if (!(postimage->line[i].flag & LINE_COMMON)) {

   memmove(new_buf, old_buf, l_len);
   old_buf += l_len;
   new_buf += l_len;
   continue;
  }


  old_buf += l_len;


  while (ctx < preimage->nr &&
         !(preimage->line[ctx].flag & LINE_COMMON)) {
   fixed += preimage->line[ctx].len;
   ctx++;
  }





  if (preimage->nr <= ctx) {
   reduced++;
   continue;
  }


  l_len = preimage->line[ctx].len;
  memcpy(new_buf, fixed, l_len);
  new_buf += l_len;
  fixed += l_len;
  postimage->line[i].len = l_len;
  ctx++;
 }

 if (postlen
     ? postlen < new_buf - postimage->buf
     : postimage->len < new_buf - postimage->buf)
  BUG("caller miscounted postlen: asked %d, orig = %d, used = %d",
      (int)postlen, (int) postimage->len, (int)(new_buf - postimage->buf));


 postimage->len = new_buf - postimage->buf;
 postimage->nr -= reduced;
}
