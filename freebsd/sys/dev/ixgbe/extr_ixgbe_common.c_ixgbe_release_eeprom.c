
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int semaphore_delay; } ;
struct TYPE_5__ {int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_1__ eeprom; TYPE_3__ mac; } ;


 int DEBUGFUNC (char*) ;
 int IXGBE_EEC_BY_MAC (struct ixgbe_hw*) ;
 int IXGBE_EEC_CS ;
 int IXGBE_EEC_REQ ;
 int IXGBE_EEC_SK ;
 int IXGBE_GSSR_EEP_SM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int msec_delay (int ) ;
 int stub1 (struct ixgbe_hw*,int ) ;
 int usec_delay (int) ;

__attribute__((used)) static void ixgbe_release_eeprom(struct ixgbe_hw *hw)
{
 u32 eec;

 DEBUGFUNC("ixgbe_release_eeprom");

 eec = IXGBE_READ_REG(hw, IXGBE_EEC_BY_MAC(hw));

 eec |= IXGBE_EEC_CS;
 eec &= ~IXGBE_EEC_SK;

 IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), eec);
 IXGBE_WRITE_FLUSH(hw);

 usec_delay(1);


 eec &= ~IXGBE_EEC_REQ;
 IXGBE_WRITE_REG(hw, IXGBE_EEC_BY_MAC(hw), eec);

 hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);


 msec_delay(hw->eeprom.semaphore_delay);
}
