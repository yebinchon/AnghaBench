
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_error; } ;


 int sbuf_put_bytes (struct sbuf*,char const*,size_t) ;
 size_t strlen (char const*) ;

int
sbuf_cat(struct sbuf *s, const char *str)
{
 size_t n;

 n = strlen(str);
 sbuf_put_bytes(s, str, n);
 if (s->s_error != 0)
  return (-1);
 return (0);
}
