
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpcb {int dummy; } ;
struct socket {int dummy; } ;


 int KASSERT (int ,char*) ;
 int UNP_PCB_LOCK (struct unpcb*) ;
 int UNP_PCB_UNLOCK (struct unpcb*) ;
 int socantsendmore (struct socket*) ;
 struct unpcb* sotounpcb (struct socket*) ;
 int unp_shutdown (struct unpcb*) ;

__attribute__((used)) static int
uipc_shutdown(struct socket *so)
{
 struct unpcb *unp;

 unp = sotounpcb(so);
 KASSERT(unp != ((void*)0), ("uipc_shutdown: unp == NULL"));

 UNP_PCB_LOCK(unp);
 socantsendmore(so);
 unp_shutdown(unp);
 UNP_PCB_UNLOCK(unp);
 return (0);
}
