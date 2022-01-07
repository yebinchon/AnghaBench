
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_error; } ;



int
sbuf_error(const struct sbuf *s)
{

 return (s->s_error);
}
