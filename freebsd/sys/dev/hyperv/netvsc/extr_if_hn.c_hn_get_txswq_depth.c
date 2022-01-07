
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {scalar_t__ hn_txdesc_cnt; } ;


 int KASSERT (int,char*) ;
 scalar_t__ hn_tx_swq_depth ;

__attribute__((used)) static int
hn_get_txswq_depth(const struct hn_tx_ring *txr)
{

 KASSERT(txr->hn_txdesc_cnt > 0, ("tx ring is not setup yet"));
 if (hn_tx_swq_depth < txr->hn_txdesc_cnt)
  return txr->hn_txdesc_cnt;
 return hn_tx_swq_depth;
}
