
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_robust_lists_params {int robust_inact_offset; int robust_priv_list_offset; int robust_list_offset; } ;
struct thread {int td_rb_inact; int td_rbp_list; int td_rb_list; } ;



__attribute__((used)) static int
umtx_robust_lists(struct thread *td, struct umtx_robust_lists_params *rbp)
{

 td->td_rb_list = rbp->robust_list_offset;
 td->td_rbp_list = rbp->robust_priv_list_offset;
 td->td_rb_inact = rbp->robust_inact_offset;
 return (0);
}
