
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_len; char* s_buf; scalar_t__ s_error; } ;


 int SBUF_ISDRAINATEOL (struct sbuf*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;
 int sbuf_put_byte (struct sbuf*,char) ;

int
sbuf_nl_terminate(struct sbuf *s)
{

 assert_sbuf_integrity(s);
 assert_sbuf_state(s, 0);
 if (s->s_len == 0) {
  if (!SBUF_ISDRAINATEOL(s))
   sbuf_put_byte(s, '\n');
 } else if (s->s_buf[s->s_len - 1] != '\n')
  sbuf_put_byte(s, '\n');

 if (s->s_error != 0)
  return (-1);
 return (0);
}
