
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcptw {scalar_t__ tw_time; int tw_inpcb; } ;


 int INP_WLOCK_ASSERT (int ) ;
 int NET_EPOCH_ASSERT () ;
 int TAILQ_INSERT_TAIL (int *,struct tcptw*,int ) ;
 int TAILQ_REMOVE (int *,struct tcptw*,int ) ;
 int TW_WLOCK (int ) ;
 int TW_WUNLOCK (int ) ;
 int V_tw_lock ;
 int V_twq_2msl ;
 int tcp_msl ;
 scalar_t__ ticks ;
 int tw_2msl ;

__attribute__((used)) static void
tcp_tw_2msl_reset(struct tcptw *tw, int rearm)
{

 NET_EPOCH_ASSERT();
 INP_WLOCK_ASSERT(tw->tw_inpcb);

 TW_WLOCK(V_tw_lock);
 if (rearm)
  TAILQ_REMOVE(&V_twq_2msl, tw, tw_2msl);
 tw->tw_time = ticks + 2 * tcp_msl;
 TAILQ_INSERT_TAIL(&V_twq_2msl, tw, tw_2msl);
 TW_WUNLOCK(V_tw_lock);
}
