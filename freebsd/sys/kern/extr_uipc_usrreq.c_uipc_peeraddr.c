
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int * unp_addr; struct unpcb* unp_conn; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int sa_len; } ;


 int KASSERT (int ,char*) ;
 int M_SONAME ;
 int M_WAITOK ;
 int UNP_LINK_RLOCK () ;
 int UNP_LINK_RUNLOCK () ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int bcopy (struct sockaddr const*,struct sockaddr*,int ) ;
 struct sockaddr* malloc (int,int ,int ) ;
 struct unpcb* sotounpcb (struct socket*) ;
 struct sockaddr sun_noname ;

__attribute__((used)) static int
uipc_peeraddr(struct socket *so, struct sockaddr **nam)
{
 struct unpcb *unp, *unp2;
 const struct sockaddr *sa;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_peeraddr: unp == NULL"));

 *nam = malloc(sizeof(struct sockaddr_un), M_SONAME, M_WAITOK);
 UNP_LINK_RLOCK();





 unp2 = unp->unp_conn;
 if (unp2 != ((void*)0)) {
  UNP_PCB_LOCK(unp2);
  if (unp2->unp_addr != ((void*)0))
   sa = (struct sockaddr *) unp2->unp_addr;
  else
   sa = &sun_noname;
  bcopy(sa, *nam, sa->sa_len);
  UNP_PCB_UNLOCK(unp2);
 } else {
  sa = &sun_noname;
  bcopy(sa, *nam, sa->sa_len);
 }
 UNP_LINK_RUNLOCK();
 return (0);
}
