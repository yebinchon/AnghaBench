
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpcb {scalar_t__ t_state; scalar_t__ t_maxseg; int t_flags; struct tcp_function_block* t_fb; int t_inpcb; } ;
struct tcp_function_set {char* function_set_name; int pcbcnt; } ;
struct tcp_function_block {int (* tfb_tcp_handoff_ok ) (struct tcpcb*) ;int tfb_flags; int (* tfb_tcp_fb_init ) (struct tcpcb*) ;int (* tfb_tcp_ctloutput ) (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;int tfb_refcnt; int tfb_tcp_block_name; int (* tfb_tcp_fb_fini ) (struct tcpcb*,int ) ;} ;
struct sockopt {scalar_t__ sopt_level; int sopt_name; int sopt_dir; } ;
struct socket {int dummy; } ;
struct ip6_pktopts {scalar_t__ ip6po_minmtu; } ;
struct TYPE_2__ {int inc_flags; } ;
struct inpcb {int inp_vflag; int inp_flags; struct ip6_pktopts* in6p_outputopts; TYPE_1__ inp_inc; } ;


 int ECONNRESET ;
 int EINVAL ;
 int ENOENT ;
 int HPTS_REMOVE_ALL ;
 int INC_IPV6MINMTU ;
 int INC_ISIPV6 ;
 int INP_DROPPED ;
 int INP_IPV6PROTO ;
 int INP_TIMEWAIT ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WLOCK_RECHECK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 scalar_t__ IP6PO_MINMTU_ALL ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPPROTO_TCP ;
 int IPV6_USE_MIN_MTU ;
 int KASSERT (int ,char*) ;
 int SOPT_GET ;
 int SOPT_SET ;
 scalar_t__ TCP6_MSS ;
 scalar_t__ TCPS_CLOSED ;
 scalar_t__ TCPS_SYN_SENT ;
 int TCP_FUNCTION_BLK ;
 int TCP_FUNCTION_NAME_LEN_MAX ;
 int TCP_FUNC_BEING_REMOVED ;
 int TF_TOE ;
 struct tcp_function_block* find_and_ref_tcp_functions (struct tcp_function_set*) ;
 struct tcpcb* intotcpcb (struct inpcb*) ;
 int ip6_ctloutput (struct socket*,struct sockopt*) ;
 int ip_ctloutput (struct socket*,struct sockopt*) ;
 int refcount_release (int *) ;
 int soabort (struct socket*) ;
 int sooptcopyin (struct sockopt*,struct tcp_function_set*,int,int) ;
 int sooptcopyout (struct sockopt*,struct tcp_function_set*,int) ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int strncpy (char*,int ,int) ;
 int stub1 (struct tcpcb*) ;
 int stub2 (struct tcpcb*,int ) ;
 int stub3 (struct tcpcb*) ;
 scalar_t__ stub4 (struct tcpcb*) ;
 int stub5 (struct socket*,struct sockopt*,struct inpcb*,struct tcpcb*) ;
 int tcp_hpts_remove (int ,int ) ;
 int tcp_offload_ctloutput (struct tcpcb*,int ,int ) ;

int
tcp_ctloutput(struct socket *so, struct sockopt *sopt)
{
 int error;
 struct inpcb *inp;
 struct tcpcb *tp;
 struct tcp_function_block *blk;
 struct tcp_function_set fsn;

 error = 0;
 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_ctloutput: inp == NULL"));
 if (sopt->sopt_level != IPPROTO_TCP) {
  return (error);
 }
 INP_WLOCK(inp);
 if (inp->inp_flags & (INP_TIMEWAIT | INP_DROPPED)) {
  INP_WUNLOCK(inp);
  return (ECONNRESET);
 }
 tp = intotcpcb(inp);




 if ((sopt->sopt_dir == SOPT_SET) &&
     (sopt->sopt_name == TCP_FUNCTION_BLK)) {
  INP_WUNLOCK(inp);
  error = sooptcopyin(sopt, &fsn, sizeof fsn,
      sizeof fsn);
  if (error)
   return (error);
  INP_WLOCK_RECHECK(inp);
  blk = find_and_ref_tcp_functions(&fsn);
  if (blk == ((void*)0)) {
   INP_WUNLOCK(inp);
   return (ENOENT);
  }
  if (tp->t_fb == blk) {

   refcount_release(&blk->tfb_refcnt);
   INP_WUNLOCK(inp);
   return (0);
  }
  if (tp->t_state != TCPS_CLOSED) {





   if (blk->tfb_tcp_handoff_ok != ((void*)0)) {





    error = (*blk->tfb_tcp_handoff_ok)(tp);
   } else
    error = EINVAL;
   if (error) {
    refcount_release(&blk->tfb_refcnt);
    INP_WUNLOCK(inp);
    return(error);
   }
  }
  if (blk->tfb_flags & TCP_FUNC_BEING_REMOVED) {
   refcount_release(&blk->tfb_refcnt);
   INP_WUNLOCK(inp);
   return (ENOENT);
  }





  if (tp->t_fb->tfb_tcp_fb_fini) {




   (*tp->t_fb->tfb_tcp_fb_fini)(tp, 0);
  }




  if (blk->tfb_tcp_fb_init) {
   error = (*blk->tfb_tcp_fb_init)(tp);
   if (error) {
    refcount_release(&blk->tfb_refcnt);
    if (tp->t_fb->tfb_tcp_fb_init) {
     if((*tp->t_fb->tfb_tcp_fb_init)(tp) != 0) {

      INP_WUNLOCK(inp);
      soabort(so);
      return(error);
     }
    }
    goto err_out;
   }
  }
  refcount_release(&tp->t_fb->tfb_refcnt);
  tp->t_fb = blk;






err_out:
  INP_WUNLOCK(inp);
  return (error);
 } else if ((sopt->sopt_dir == SOPT_GET) &&
     (sopt->sopt_name == TCP_FUNCTION_BLK)) {
  strncpy(fsn.function_set_name, tp->t_fb->tfb_tcp_block_name,
      TCP_FUNCTION_NAME_LEN_MAX);
  fsn.function_set_name[TCP_FUNCTION_NAME_LEN_MAX - 1] = '\0';
  fsn.pcbcnt = tp->t_fb->tfb_refcnt;
  INP_WUNLOCK(inp);
  error = sooptcopyout(sopt, &fsn, sizeof fsn);
  return (error);
 }

 return (tp->t_fb->tfb_tcp_ctloutput(so, sopt, inp, tp));
}
