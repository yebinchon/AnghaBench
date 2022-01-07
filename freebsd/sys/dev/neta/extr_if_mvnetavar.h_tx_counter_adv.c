
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MVNETA_TX_RING_CNT ;
 scalar_t__ __predict_false (int) ;

__attribute__((used)) static __inline int
tx_counter_adv(int ctr, int n)
{

 ctr += n;
 while (__predict_false(ctr >= MVNETA_TX_RING_CNT))
  ctr -= MVNETA_TX_RING_CNT;

 return (ctr);
}
