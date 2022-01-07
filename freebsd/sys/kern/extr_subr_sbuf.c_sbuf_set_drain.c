
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {scalar_t__ s_len; void* s_drain_arg; int * s_drain_func; } ;
typedef int sbuf_drain_func ;


 int KASSERT (int,char*) ;
 int assert_sbuf_integrity (struct sbuf*) ;
 int assert_sbuf_state (struct sbuf*,int ) ;

void
sbuf_set_drain(struct sbuf *s, sbuf_drain_func *func, void *ctx)
{

 assert_sbuf_state(s, 0);
 assert_sbuf_integrity(s);
 KASSERT(func == s->s_drain_func || s->s_len == 0,
     ("Cannot change drain to %p on non-empty sbuf %p", func, s));
 s->s_drain_func = func;
 s->s_drain_arg = ctx;
}
