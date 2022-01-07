
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {int refs; int flags; } ;
struct hn_tx_ring {int dummy; } ;


 int HN_TXD_FLAG_ONAGG ;
 int KASSERT (int,char*) ;
 int hn_txdesc_put (struct hn_tx_ring*,struct hn_txdesc*) ;

__attribute__((used)) static void
hn_txdesc_gc(struct hn_tx_ring *txr, struct hn_txdesc *txd)
{

 KASSERT(txd->refs == 0 || txd->refs == 1,
     ("invalid txd refs %d", txd->refs));


 if (txd->refs > 0 && (txd->flags & HN_TXD_FLAG_ONAGG) == 0) {
  int freed;

  freed = hn_txdesc_put(txr, txd);
  KASSERT(freed, ("can't free txdesc"));
 }
}
