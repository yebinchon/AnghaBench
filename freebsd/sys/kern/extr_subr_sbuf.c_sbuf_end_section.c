
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_sect_len; scalar_t__ s_error; scalar_t__ s_rec_off; } ;
typedef scalar_t__ ssize_t ;


 int KASSERT (int ,char*) ;
 int SBUF_CLEARFLAG (struct sbuf*,int ) ;
 int SBUF_INSECTION ;
 int SBUF_ISSECTION (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 scalar_t__ roundup (scalar_t__,size_t) ;
 int sbuf_put_byte (struct sbuf*,int) ;

ssize_t
sbuf_end_section(struct sbuf *s, ssize_t old_len, size_t pad, int c)
{
 ssize_t len;

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);
 KASSERT(SBUF_ISSECTION(s),
     ("attempt to end a section when not in a section"));

 if (pad > 1) {
  len = roundup(s->s_sect_len, pad) - s->s_sect_len;
  for (; s->s_error == 0 && len > 0; len--)
   sbuf_put_byte(s, c);
 }
 len = s->s_sect_len;
 if (old_len == -1) {
  s->s_rec_off = s->s_sect_len = 0;
  SBUF_CLEARFLAG(s, SBUF_INSECTION);
 } else {
  s->s_sect_len += old_len;
 }
 if (s->s_error != 0)
  return (-1);
 return (len);
}
