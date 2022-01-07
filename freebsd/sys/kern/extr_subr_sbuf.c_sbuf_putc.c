
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_error; } ;


 int sbuf_put_byte (struct sbuf*,int) ;

int
sbuf_putc(struct sbuf *s, int c)
{

 sbuf_put_byte(s, c);
 if (s->s_error != 0)
  return (-1);
 return (0);
}
