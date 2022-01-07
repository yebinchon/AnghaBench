
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct adapter {int rx_overruns; TYPE_2__ hw; int ctx; } ;
typedef int if_ctx_t ;


 int E1000_ICR ;
 int E1000_ICR_INT_ASSERTED ;
 int E1000_ICR_LSC ;
 int E1000_ICR_RXO ;
 int E1000_ICR_RXSEQ ;
 int E1000_READ_REG (TYPE_2__*,int ) ;
 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int IFDI_INTR_DISABLE (int ) ;
 scalar_t__ e1000_82571 ;
 int em_handle_link (int ) ;

int
em_intr(void *arg)
{
 struct adapter *adapter = arg;
 if_ctx_t ctx = adapter->ctx;
 u32 reg_icr;

 reg_icr = E1000_READ_REG(&adapter->hw, E1000_ICR);


 if (reg_icr == 0xffffffff)
  return FILTER_STRAY;


 if (reg_icr == 0x0)
  return FILTER_STRAY;





 if (adapter->hw.mac.type >= e1000_82571 &&
     (reg_icr & E1000_ICR_INT_ASSERTED) == 0)
  return FILTER_STRAY;







 IFDI_INTR_DISABLE(ctx);


 if (reg_icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC))
  em_handle_link(ctx);

 if (reg_icr & E1000_ICR_RXO)
  adapter->rx_overruns++;

 return (FILTER_SCHEDULE_THREAD);
}
