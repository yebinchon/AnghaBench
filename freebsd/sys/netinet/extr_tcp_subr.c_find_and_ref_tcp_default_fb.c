
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_function_block {int tfb_refcnt; } ;


 int refcount_acquire (int *) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 struct tcp_function_block* tcp_func_set_ptr ;
 int tcp_function_lock ;

__attribute__((used)) static struct tcp_function_block *
find_and_ref_tcp_default_fb(void)
{
 struct tcp_function_block *rblk;

 rw_rlock(&tcp_function_lock);
 rblk = tcp_func_set_ptr;
 refcount_acquire(&rblk->tfb_refcnt);
 rw_runlock(&tcp_function_lock);
 return (rblk);
}
