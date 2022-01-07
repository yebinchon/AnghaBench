
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_ring {int dummy; } ;
struct mbuf {int dummy; } ;


 int UNREFERENCED_2PARAMETER (struct tx_ring*,struct mbuf*) ;

void
ixgbe_atr(struct tx_ring *txr, struct mbuf *mp)
{
 UNREFERENCED_2PARAMETER(txr, mp);
}
