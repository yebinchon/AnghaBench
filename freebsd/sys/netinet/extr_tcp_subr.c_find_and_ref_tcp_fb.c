
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_function_block {int tfb_refcnt; } ;


 struct tcp_function_block* find_tcp_fb_locked (struct tcp_function_block*,int *) ;
 int refcount_acquire (int *) ;
 int rw_rlock (int *) ;
 int rw_runlock (int *) ;
 int tcp_function_lock ;

struct tcp_function_block *
find_and_ref_tcp_fb(struct tcp_function_block *blk)
{
 struct tcp_function_block *rblk;

 rw_rlock(&tcp_function_lock);
 rblk = find_tcp_fb_locked(blk, ((void*)0));
 if (rblk)
  refcount_acquire(&rblk->tfb_refcnt);
 rw_runlock(&tcp_function_lock);
 return(rblk);
}
