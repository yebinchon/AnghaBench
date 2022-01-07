
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct image {size_t len; char* buf; int nr; TYPE_1__* line; } ;
struct TYPE_2__ {size_t len; int flag; } ;


 int LINE_COMMON ;
 int fuzzy_matchlines (char*,size_t,char*,size_t) ;
 int isspace (char) ;
 int strbuf_add (struct strbuf*,char*,size_t) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 int strbuf_init (struct strbuf*,size_t) ;
 int update_pre_post_images (struct image*,struct image*,char*,size_t,size_t) ;

__attribute__((used)) static int line_by_line_fuzzy_match(struct image *img,
        struct image *preimage,
        struct image *postimage,
        unsigned long current,
        int current_lno,
        int preimage_limit)
{
 int i;
 size_t imgoff = 0;
 size_t preoff = 0;
 size_t postlen = postimage->len;
 size_t extra_chars;
 char *buf;
 char *preimage_eof;
 char *preimage_end;
 struct strbuf fixed;
 char *fixed_buf;
 size_t fixed_len;

 for (i = 0; i < preimage_limit; i++) {
  size_t prelen = preimage->line[i].len;
  size_t imglen = img->line[current_lno+i].len;

  if (!fuzzy_matchlines(img->buf + current + imgoff, imglen,
          preimage->buf + preoff, prelen))
   return 0;
  if (preimage->line[i].flag & LINE_COMMON)
   postlen += imglen - prelen;
  imgoff += imglen;
  preoff += prelen;
 }
 buf = preimage_eof = preimage->buf + preoff;
 for ( ; i < preimage->nr; i++)
  preoff += preimage->line[i].len;
 preimage_end = preimage->buf + preoff;
 for ( ; buf < preimage_end; buf++)
  if (!isspace(*buf))
   return 0;
 extra_chars = preimage_end - preimage_eof;
 strbuf_init(&fixed, imgoff + extra_chars);
 strbuf_add(&fixed, img->buf + current, imgoff);
 strbuf_add(&fixed, preimage_eof, extra_chars);
 fixed_buf = strbuf_detach(&fixed, &fixed_len);
 update_pre_post_images(preimage, postimage,
          fixed_buf, fixed_len, postlen);
 return 1;
}
