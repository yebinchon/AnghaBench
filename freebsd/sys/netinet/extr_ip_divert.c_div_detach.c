
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int V_divcbinfo ;
 int in_pcbdetach (struct inpcb*) ;
 int in_pcbfree (struct inpcb*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static void
div_detach(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("div_detach: inp == NULL"));
 INP_INFO_WLOCK(&V_divcbinfo);
 INP_WLOCK(inp);
 in_pcbdetach(inp);
 in_pcbfree(inp);
 INP_INFO_WUNLOCK(&V_divcbinfo);
}
