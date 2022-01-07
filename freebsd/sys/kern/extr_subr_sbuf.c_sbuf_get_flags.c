
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_flags; } ;


 int SBUF_USRFLAGMSK ;

int
sbuf_get_flags(struct sbuf *s)
{

 return (s->s_flags & SBUF_USRFLAGMSK);
}
