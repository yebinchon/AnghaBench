
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netfront_rxq {scalar_t__* grant_ref; } ;
typedef scalar_t__ grant_ref_t ;
typedef int RING_IDX ;


 scalar_t__ GRANT_REF_INVALID ;
 int KASSERT (int,char*) ;
 int xn_rxidx (int ) ;

__attribute__((used)) static inline grant_ref_t
xn_get_rx_ref(struct netfront_rxq *rxq, RING_IDX ri)
{
 int i = xn_rxidx(ri);
 grant_ref_t ref = rxq->grant_ref[i];

 KASSERT(ref != GRANT_REF_INVALID, ("Invalid grant reference!\n"));
 rxq->grant_ref[i] = GRANT_REF_INVALID;
 return (ref);
}
