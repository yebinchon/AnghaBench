
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int * unp_addr; } ;
struct socket {int dummy; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int sa_len; } ;


 int KASSERT (int ,char*) ;
 int M_SONAME ;
 int M_WAITOK ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int bcopy (struct sockaddr const*,struct sockaddr*,int ) ;
 struct sockaddr* malloc (int,int ,int ) ;
 struct unpcb* sotounpcb (struct socket*) ;
 struct sockaddr sun_noname ;

__attribute__((used)) static int
uipc_sockaddr(struct socket *so, struct sockaddr **nam)
{
 struct unpcb *unp;
 const struct sockaddr *sa;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_sockaddr: unp == NULL"));

 *nam = malloc(sizeof(struct sockaddr_un), M_SONAME, M_WAITOK);
 UNP_PCB_LOCK(unp);
 if (unp->unp_addr != ((void*)0))
  sa = (struct sockaddr *) unp->unp_addr;
 else
  sa = &sun_noname;
 bcopy(sa, *nam, sa->sa_len);
 UNP_PCB_UNLOCK(unp);
 return (0);
}
