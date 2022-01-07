
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct socket {scalar_t__ so_pcb; } ;
struct inpcb {int inp_ip_p; int inp_flags; int inp_vflag; } ;


 int INP_HDRINCL ;
 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_IPV4 ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int PRIV_NETINET_DIVERT ;
 int V_divcbinfo ;
 int div_recvspace ;
 int div_sendspace ;
 int in_pcballoc (struct socket*,int *) ;
 int priv_check (struct thread*,int ) ;
 int soreserve (struct socket*,int ,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_attach(struct socket *so, int proto, struct thread *td)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);
 KASSERT(inp == ((void*)0), ("div_attach: inp != NULL"));
 if (td != ((void*)0)) {
  error = priv_check(td, PRIV_NETINET_DIVERT);
  if (error)
   return (error);
 }
 error = soreserve(so, div_sendspace, div_recvspace);
 if (error)
  return error;
 INP_INFO_WLOCK(&V_divcbinfo);
 error = in_pcballoc(so, &V_divcbinfo);
 if (error) {
  INP_INFO_WUNLOCK(&V_divcbinfo);
  return error;
 }
 inp = (struct inpcb *)so->so_pcb;
 INP_INFO_WUNLOCK(&V_divcbinfo);
 inp->inp_ip_p = proto;
 inp->inp_vflag |= INP_IPV4;
 inp->inp_flags |= INP_HDRINCL;
 INP_WUNLOCK(inp);
 return 0;
}
