
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_desc {scalar_t__ desc3; scalar_t__ desc2; scalar_t__ desc1; scalar_t__ desc0; } ;
struct xgbe_ring_data {struct xgbe_ring_desc* rdesc; } ;


 int dsb (int ) ;
 int sy ;

__attribute__((used)) static void xgbe_tx_desc_reset(struct xgbe_ring_data *rdata)
{
 struct xgbe_ring_desc *rdesc = rdata->rdesc;







 rdesc->desc0 = 0;
 rdesc->desc1 = 0;
 rdesc->desc2 = 0;
 rdesc->desc3 = 0;

 dsb(sy);
}
