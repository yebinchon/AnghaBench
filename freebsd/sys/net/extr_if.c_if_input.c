
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
typedef scalar_t__ if_t ;


 int stub1 (struct ifnet*,struct mbuf*) ;

int
if_input(if_t ifp, struct mbuf* sendmp)
{
 (*((struct ifnet *)ifp)->if_input)((struct ifnet *)ifp, sendmp);
 return (0);

}
