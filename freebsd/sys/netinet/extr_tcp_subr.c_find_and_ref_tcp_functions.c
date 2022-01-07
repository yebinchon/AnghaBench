
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_function_set {int dummy; } ;
struct tcp_function_block {int tfb_refcnt; } ;


 struct tcp_function_block* find_tcp_functions_locked (struct tcp_function_set*) ;
 int refcount_acquire (int *) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int tcp_function_lock ;

struct tcp_function_block *
find_and_ref_tcp_functions(struct tcp_function_set *fs)
{
 struct tcp_function_block *blk;

 rw_rlock(&tcp_function_lock);
 blk = find_tcp_functions_locked(fs);
 if (blk)
  refcount_acquire(&blk->tfb_refcnt);
 rw_runlock(&tcp_function_lock);
 return(blk);
}
