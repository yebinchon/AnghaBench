
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_error; size_t s_len; size_t s_sect_len; int * s_buf; int * s_drain_func; } ;


 scalar_t__ ENOMEM ;
 size_t INT_MAX ;
 size_t SBUF_FREESPACE (struct sbuf*) ;
 scalar_t__ SBUF_ISSECTION (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 int memcpy (int *,char const*,size_t) ;
 int sbuf_drain (struct sbuf*) ;
 scalar_t__ sbuf_extend (struct sbuf*,size_t) ;

__attribute__((used)) static void
sbuf_put_bytes(struct sbuf *s, const char *buf, size_t len)
{
 size_t n;

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 if (s->s_error != 0)
  return;
 while (len > 0) {
  if (SBUF_FREESPACE(s) <= 0) {




   if (s->s_drain_func != ((void*)0))
    (void)sbuf_drain(s);
   else if (sbuf_extend(s, len > INT_MAX ? INT_MAX : len)
       < 0)
    s->s_error = ENOMEM;
   if (s->s_error != 0)
    return;
  }
  n = SBUF_FREESPACE(s);
  if (len < n)
   n = len;
  memcpy(&s->s_buf[s->s_len], buf, n);
  s->s_len += n;
  if (SBUF_ISSECTION(s))
   s->s_sect_len += n;
  len -= n;
  buf += n;
 }
}
