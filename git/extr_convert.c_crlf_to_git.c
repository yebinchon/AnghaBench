
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_stat {scalar_t__ lonelf; scalar_t__ crlf; } ;
struct strbuf {size_t len; char* buf; } ;
struct index_state {int dummy; } ;
typedef int new_stats ;
typedef enum crlf_action { ____Placeholder_crlf_action } crlf_action ;


 int CONV_EOL_RENORMALIZE ;
 int CONV_EOL_RNDTRP_DIE ;
 int CONV_EOL_RNDTRP_WARN ;
 int CRLF_AUTO ;
 int CRLF_AUTO_CRLF ;
 int CRLF_AUTO_INPUT ;
 int CRLF_BINARY ;
 int check_global_conv_flags_eol (char const*,int,struct text_stat*,struct text_stat*,int) ;
 scalar_t__ convert_is_binary (struct text_stat*) ;
 int gather_stats (char const*,size_t,struct text_stat*) ;
 scalar_t__ has_crlf_in_index (struct index_state const*,char const*) ;
 int memcpy (struct text_stat*,struct text_stat*,int) ;
 size_t strbuf_avail (struct strbuf*) ;
 int strbuf_grow (struct strbuf*,size_t) ;
 int strbuf_setlen (struct strbuf*,int) ;
 scalar_t__ will_convert_lf_to_crlf (struct text_stat*,int) ;

__attribute__((used)) static int crlf_to_git(const struct index_state *istate,
         const char *path, const char *src, size_t len,
         struct strbuf *buf,
         enum crlf_action crlf_action, int conv_flags)
{
 struct text_stat stats;
 char *dst;
 int convert_crlf_into_lf;

 if (crlf_action == CRLF_BINARY ||
     (src && !len))
  return 0;





 if (!buf && !src)
  return 1;

 gather_stats(src, len, &stats);

 convert_crlf_into_lf = !!stats.crlf;

 if (crlf_action == CRLF_AUTO || crlf_action == CRLF_AUTO_INPUT || crlf_action == CRLF_AUTO_CRLF) {
  if (convert_is_binary(&stats))
   return 0;






  if ((!(conv_flags & CONV_EOL_RENORMALIZE)) &&
      has_crlf_in_index(istate, path))
   convert_crlf_into_lf = 0;
 }
 if (((conv_flags & CONV_EOL_RNDTRP_WARN) ||
      ((conv_flags & CONV_EOL_RNDTRP_DIE) && len))) {
  struct text_stat new_stats;
  memcpy(&new_stats, &stats, sizeof(new_stats));

  if (convert_crlf_into_lf) {
   new_stats.lonelf += new_stats.crlf;
   new_stats.crlf = 0;
  }

  if (will_convert_lf_to_crlf(&new_stats, crlf_action)) {
   new_stats.crlf += new_stats.lonelf;
   new_stats.lonelf = 0;
  }
  check_global_conv_flags_eol(path, crlf_action, &stats, &new_stats, conv_flags);
 }
 if (!convert_crlf_into_lf)
  return 0;





 if (!buf)
  return 1;


 if (strbuf_avail(buf) + buf->len < len)
  strbuf_grow(buf, len - buf->len);
 dst = buf->buf;
 if (crlf_action == CRLF_AUTO || crlf_action == CRLF_AUTO_INPUT || crlf_action == CRLF_AUTO_CRLF) {





  do {
   unsigned char c = *src++;
   if (c != '\r')
    *dst++ = c;
  } while (--len);
 } else {
  do {
   unsigned char c = *src++;
   if (! (c == '\r' && (1 < len && *src == '\n')))
    *dst++ = c;
  } while (--len);
 }
 strbuf_setlen(buf, dst - buf->buf);
 return 1;
}
