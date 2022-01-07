
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct nbpcb {int * nbp_selectid; } ;


 int SU_OK ;
 int wakeup (int *) ;

__attribute__((used)) static int
nb_upcall(struct socket *so, void *arg, int waitflag)
{
 struct nbpcb *nbp = arg;

 if (arg == ((void*)0) || nbp->nbp_selectid == ((void*)0))
  return (SU_OK);
 wakeup(nbp->nbp_selectid);
 return (SU_OK);
}
