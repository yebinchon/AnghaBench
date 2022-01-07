
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dev; int hw; } ;


 int IXGBE_EICR_GPI_SDP1_BY_MAC (int *) ;
 int IXGBE_ESDP_SDP1 ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
ixgbe_check_fan_failure(struct adapter *adapter, u32 reg, bool in_interrupt)
{
 u32 mask;

 mask = (in_interrupt) ? IXGBE_EICR_GPI_SDP1_BY_MAC(&adapter->hw) :
     IXGBE_ESDP_SDP1;

 if (reg & mask)
  device_printf(adapter->dev, "\nCRITICAL: FAN FAILURE!! REPLACE IMMEDIATELY!!\n");
}
