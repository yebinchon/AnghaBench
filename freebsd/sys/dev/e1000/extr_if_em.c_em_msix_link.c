
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__ mac; int * back; } ;
struct adapter {int ims; int link_mask; TYPE_2__ hw; int ctx; int rx_overruns; int link_irq; } ;


 int E1000_EIMS ;
 int E1000_ICR ;
 int E1000_ICR_LSC ;
 int E1000_ICR_RXO ;
 int E1000_ICR_RXSEQ ;
 int E1000_ICS ;
 int E1000_IMS ;
 int E1000_IMS_LSC ;
 int E1000_READ_REG (TYPE_2__*,int ) ;
 int E1000_WRITE_REG (TYPE_2__*,int ,int) ;
 int EM_MSIX_LINK ;
 int FILTER_HANDLED ;
 int MPASS (int ) ;
 scalar_t__ e1000_82574 ;
 int em_handle_link (int ) ;

__attribute__((used)) static int
em_msix_link(void *arg)
{
 struct adapter *adapter = arg;
 u32 reg_icr;

 ++adapter->link_irq;
 MPASS(adapter->hw.back != ((void*)0));
 reg_icr = E1000_READ_REG(&adapter->hw, E1000_ICR);

 if (reg_icr & E1000_ICR_RXO)
  adapter->rx_overruns++;

 if (reg_icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC)) {
  em_handle_link(adapter->ctx);
 } else if (adapter->hw.mac.type == e1000_82574) {

  E1000_WRITE_REG(&adapter->hw, E1000_IMS, EM_MSIX_LINK |
      E1000_IMS_LSC);
 }

 if (adapter->hw.mac.type == e1000_82574) {





  if (reg_icr)
   E1000_WRITE_REG(&adapter->hw, E1000_ICS, adapter->ims);
 } else {

  E1000_WRITE_REG(&adapter->hw, E1000_IMS, E1000_IMS_LSC);
  E1000_WRITE_REG(&adapter->hw, E1000_EIMS, adapter->link_mask);
 }

 return (FILTER_HANDLED);
}
