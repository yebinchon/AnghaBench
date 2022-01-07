
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int * inp_socket; } ;
struct epoch_tracker {int dummy; } ;


 int INP_INFO_WLOCKED (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int NET_EPOCH_ENTER (struct epoch_tracker) ;
 int NET_EPOCH_EXIT (struct epoch_tracker) ;
 int V_tcbinfo ;
 struct inpcb* sotoinpcb (struct socket*) ;
 int tcp_detach (struct socket*,struct inpcb*) ;

__attribute__((used)) static void
tcp_usr_detach(struct socket *so)
{
 struct inpcb *inp;
 int rlock = 0;
 struct epoch_tracker et;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("tcp_usr_detach: inp == NULL"));
 if (!INP_INFO_WLOCKED(&V_tcbinfo)) {
  NET_EPOCH_ENTER(et);
  rlock = 1;
 }
 INP_WLOCK(inp);
 KASSERT(inp->inp_socket != ((void*)0),
     ("tcp_usr_detach: inp_socket == NULL"));
 tcp_detach(so, inp);
 if (rlock)
  NET_EPOCH_EXIT(et);
}
