
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int t_inpcb; struct tcp_log_id_bucket* t_lib; } ;
struct tcp_log_id_bucket {int dummy; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int INP_WUNLOCK (int ) ;
 int M_WAITOK ;
 int TCPID_BUCKET_LOCK (struct tcp_log_id_bucket*) ;
 int TCPID_BUCKET_REF (struct tcp_log_id_bucket*) ;
 int TCPID_TREE_RUNLOCK () ;
 int TCPID_TREE_WUNLOCK () ;

 int TREE_UNLOCKED ;

 int tcp_log_dump_tp_logbuf (struct tcpcb*,char*,int ,int) ;
 int tcp_log_dumpbucketlogs (struct tcp_log_id_bucket*,char*) ;
 scalar_t__ tcp_log_unref_bucket (struct tcp_log_id_bucket*,int*,int *) ;

void
tcp_log_dump_tp_bucket_logbufs(struct tcpcb *tp, char *reason)
{
 struct tcp_log_id_bucket *tlb;
 int tree_locked;


 INP_WLOCK_ASSERT(tp->t_inpcb);
 tlb = tp->t_lib;
 if (tlb == ((void*)0)) {




  (void)tcp_log_dump_tp_logbuf(tp, reason, M_WAITOK, 1);
  INP_WUNLOCK(tp->t_inpcb);
  return;
 }
 TCPID_BUCKET_REF(tlb);
 INP_WUNLOCK(tp->t_inpcb);
 TCPID_BUCKET_LOCK(tlb);


 tree_locked = TREE_UNLOCKED;
 if (tcp_log_unref_bucket(tlb, &tree_locked, ((void*)0))) {
  switch (tree_locked) {
  case 128:
   TCPID_TREE_WUNLOCK();
   break;
  case 129:
   TCPID_TREE_RUNLOCK();
   break;
  }
  return;
 }


 tcp_log_dumpbucketlogs(tlb, reason);
}
