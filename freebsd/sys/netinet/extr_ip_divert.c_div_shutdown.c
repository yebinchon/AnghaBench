
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct inpcb {int dummy; } ;


 int INP_WLOCK (struct inpcb*) ;
 int INP_WUNLOCK (struct inpcb*) ;
 int KASSERT (int ,char*) ;
 int socantsendmore (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static int
div_shutdown(struct socket *so)
{
 struct inpcb *inp;

 inp = sotoinpcb(so);
 KASSERT(inp != ((void*)0), ("div_shutdown: inp == NULL"));
 INP_WLOCK(inp);
 socantsendmore(so);
 INP_WUNLOCK(inp);
 return 0;
}
