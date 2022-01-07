
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_error; } ;


 int sbuf_put_bytes (struct sbuf*,void const*,size_t) ;

int
sbuf_bcat(struct sbuf *s, const void *buf, size_t len)
{

 sbuf_put_bytes(s, buf, len);
 if (s->s_error != 0)
  return (-1);
 return (0);
}
