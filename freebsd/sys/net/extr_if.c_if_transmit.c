
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int IFQ_HANDOFF (struct ifnet*,struct mbuf*,int) ;

__attribute__((used)) static int
if_transmit(struct ifnet *ifp, struct mbuf *m)
{
 int error;

 IFQ_HANDOFF(ifp, m, error);
 return (error);
}
