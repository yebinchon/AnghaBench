
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int td_ucred; } ;
struct socket {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct inpcb {int dummy; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int INADDR_ANY ;
 int INP_HASH_WLOCK (int *) ;
 int INP_HASH_WUNLOCK (int *) ;
 int INP_INFO_WLOCK (int *) ;
 int INP_INFO_WUNLOCK (int *) ;
 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int V_divcbinfo ;
 int in_pcbbind (struct inpcb*,struct sockaddr*,int ) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_bind(struct socket *so, struct sockaddr *nam, struct thread *td)
{
 struct inpcb *inp;
 int error;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("div_bind: inp == NULL"));







 if (nam->sa_family != AF_INET)
  return EAFNOSUPPORT;
 ((struct sockaddr_in *)nam)->sin_addr.s_addr = INADDR_ANY;
 INP_INFO_WLOCK(&V_divcbinfo);
 INP_WLOCK(inp);
 INP_HASH_WLOCK(&V_divcbinfo);
 error = in_pcbbind(inp, nam, td->td_ucred);
 INP_HASH_WUNLOCK(&V_divcbinfo);
 INP_WUNLOCK(inp);
 INP_INFO_WUNLOCK(&V_divcbinfo);
 return error;
}
