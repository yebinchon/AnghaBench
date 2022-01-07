
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {char* s_buf; size_t s_len; scalar_t__ s_error; int * s_drain_func; } ;


 int SBUF_FINISHED ;
 scalar_t__ SBUF_NULINCLUDED (struct sbuf*) ;
 int SBUF_SETFLAG (struct sbuf*,int ) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 scalar_t__ errno ;
 scalar_t__ sbuf_drain (struct sbuf*) ;

int
sbuf_finish(struct sbuf *s)
{

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);

 s->s_buf[s->s_len] = '\0';
 if (SBUF_NULINCLUDED(s))
  s->s_len++;
 if (s->s_drain_func != ((void*)0)) {
  while (s->s_len > 0 && s->s_error == 0)
   s->s_error = sbuf_drain(s);
 }
 SBUF_SETFLAG(s, SBUF_FINISHED);



 if (s->s_error != 0) {
  errno = s->s_error;
  return (-1);
 }
 return (0);

}
