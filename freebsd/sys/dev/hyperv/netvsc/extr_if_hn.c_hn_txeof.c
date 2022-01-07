
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_tx_ring {int (* hn_txeof ) (struct hn_tx_ring*) ;scalar_t__ hn_has_txeof; } ;


 int stub1 (struct hn_tx_ring*) ;

__attribute__((used)) static __inline void
hn_txeof(struct hn_tx_ring *txr)
{
 txr->hn_has_txeof = 0;
 txr->hn_txeof(txr);
}
