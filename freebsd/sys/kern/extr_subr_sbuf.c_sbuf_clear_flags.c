
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int s_flags; } ;


 int SBUF_USRFLAGMSK ;

void
sbuf_clear_flags(struct sbuf *s, int flags)
{

 s->s_flags &= ~(flags & SBUF_USRFLAGMSK);
}
