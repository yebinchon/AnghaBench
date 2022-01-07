
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {size_t len; char* buf; } ;
struct image {int nr; scalar_t__ len; char* buf; TYPE_1__* line; } ;
struct apply_state {scalar_t__ ws_error_action; scalar_t__ ws_ignore_action; } ;
struct TYPE_2__ {int flag; scalar_t__ hash; size_t len; } ;


 int LINE_COMMON ;
 int LINE_PATCHED ;
 unsigned int WS_BLANK_AT_EOF ;
 scalar_t__ correct_ws_error ;
 scalar_t__ ignore_ws_change ;
 int isspace (char) ;
 int line_by_line_fuzzy_match (struct image*,struct image*,struct image*,unsigned long,int,int) ;
 int memcmp (char*,char*,scalar_t__) ;
 char* strbuf_detach (struct strbuf*,size_t*) ;
 int strbuf_init (struct strbuf*,size_t) ;
 int strbuf_release (struct strbuf*) ;
 int update_pre_post_images (struct image*,struct image*,char*,size_t,size_t) ;
 int ws_fix_copy (struct strbuf*,char*,size_t,unsigned int,int *) ;

__attribute__((used)) static int match_fragment(struct apply_state *state,
     struct image *img,
     struct image *preimage,
     struct image *postimage,
     unsigned long current,
     int current_lno,
     unsigned ws_rule,
     int match_beginning, int match_end)
{
 int i;
 char *fixed_buf, *buf, *orig, *target;
 struct strbuf fixed;
 size_t fixed_len, postlen;
 int preimage_limit;

 if (preimage->nr + current_lno <= img->nr) {



  preimage_limit = preimage->nr;
  if (match_end && (preimage->nr + current_lno != img->nr))
   return 0;
 } else if (state->ws_error_action == correct_ws_error &&
     (ws_rule & WS_BLANK_AT_EOF)) {







  preimage_limit = img->nr - current_lno;
 } else {





  return 0;
 }

 if (match_beginning && current_lno)
  return 0;


 for (i = 0; i < preimage_limit; i++)
  if ((img->line[current_lno + i].flag & LINE_PATCHED) ||
      (preimage->line[i].hash != img->line[current_lno + i].hash))
   return 0;

 if (preimage_limit == preimage->nr) {







  if ((match_end
       ? (current + preimage->len == img->len)
       : (current + preimage->len <= img->len)) &&
      !memcmp(img->buf + current, preimage->buf, preimage->len))
   return 1;
 } else {







  char *buf_end;

  buf = preimage->buf;
  buf_end = buf;
  for (i = 0; i < preimage_limit; i++)
   buf_end += preimage->line[i].len;

  for ( ; buf < buf_end; buf++)
   if (!isspace(*buf))
    break;
  if (buf == buf_end)
   return 0;
 }






 if (state->ws_ignore_action == ignore_ws_change)
  return line_by_line_fuzzy_match(img, preimage, postimage,
      current, current_lno, preimage_limit);

 if (state->ws_error_action != correct_ws_error)
  return 0;
 postlen = 0;
 for (i = 0; i < postimage->nr; i++) {
  if (!(postimage->line[i].flag & LINE_COMMON))
   postlen += postimage->line[i].len;
 }






 strbuf_init(&fixed, preimage->len + 1);
 orig = preimage->buf;
 target = img->buf + current;
 for (i = 0; i < preimage_limit; i++) {
  size_t oldlen = preimage->line[i].len;
  size_t tgtlen = img->line[current_lno + i].len;
  size_t fixstart = fixed.len;
  struct strbuf tgtfix;
  int match;


  ws_fix_copy(&fixed, orig, oldlen, ws_rule, ((void*)0));


  strbuf_init(&tgtfix, tgtlen);
  ws_fix_copy(&tgtfix, target, tgtlen, ws_rule, ((void*)0));
  match = (tgtfix.len == fixed.len - fixstart &&
    !memcmp(tgtfix.buf, fixed.buf + fixstart,
          fixed.len - fixstart));


  if (preimage->line[i].flag & LINE_COMMON)
   postlen += tgtfix.len;

  strbuf_release(&tgtfix);
  if (!match)
   goto unmatch_exit;

  orig += oldlen;
  target += tgtlen;
 }
 for ( ; i < preimage->nr; i++) {
  size_t fixstart = fixed.len;
  size_t oldlen = preimage->line[i].len;
  int j;


  ws_fix_copy(&fixed, orig, oldlen, ws_rule, ((void*)0));

  for (j = fixstart; j < fixed.len; j++)
   if (!isspace(fixed.buf[j]))
    goto unmatch_exit;

  orig += oldlen;
 }






 fixed_buf = strbuf_detach(&fixed, &fixed_len);
 if (postlen < postimage->len)
  postlen = 0;
 update_pre_post_images(preimage, postimage,
          fixed_buf, fixed_len, postlen);
 return 1;

 unmatch_exit:
 strbuf_release(&fixed);
 return 0;
}
