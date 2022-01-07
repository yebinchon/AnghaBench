
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session {int s_count; } ;


 int refcount_acquire (int *) ;

void
sess_hold(struct session *s)
{

 refcount_acquire(&s->s_count);
}
