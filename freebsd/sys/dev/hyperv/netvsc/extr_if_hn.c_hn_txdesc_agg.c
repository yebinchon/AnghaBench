
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {int flags; int agg_list; } ;


 int HN_TXD_FLAG_ONAGG ;
 int KASSERT (int,char*) ;
 int STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct hn_txdesc*,int ) ;
 int agg_link ;

__attribute__((used)) static __inline void
hn_txdesc_agg(struct hn_txdesc *agg_txd, struct hn_txdesc *txd)
{

 KASSERT((agg_txd->flags & HN_TXD_FLAG_ONAGG) == 0,
     ("recursive aggregation on aggregating txdesc"));

 KASSERT((txd->flags & HN_TXD_FLAG_ONAGG) == 0,
     ("already aggregated"));
 KASSERT(STAILQ_EMPTY(&txd->agg_list),
     ("recursive aggregation on to-be-aggregated txdesc"));

 txd->flags |= HN_TXD_FLAG_ONAGG;
 STAILQ_INSERT_TAIL(&agg_txd->agg_list, txd, agg_link);
}
