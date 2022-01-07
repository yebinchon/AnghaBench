
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* read_i2c_byte ) (struct ixgbe_hw*,scalar_t__,int ,int *) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
struct ifi2creq {int len; int * data; int dev_addr; scalar_t__ offset; } ;
struct adapter {struct ixgbe_hw hw; } ;
typedef int if_ctx_t ;


 int ENXIO ;
 struct adapter* iflib_get_softc (int ) ;
 int stub1 (struct ixgbe_hw*,scalar_t__,int ,int *) ;

__attribute__((used)) static int
ixgbe_if_i2c_req(if_ctx_t ctx, struct ifi2creq *req)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 int i;


 if (hw->phy.ops.read_i2c_byte == ((void*)0))
  return (ENXIO);
 for (i = 0; i < req->len; i++)
  hw->phy.ops.read_i2c_byte(hw, req->offset + i,
      req->dev_addr, &req->data[i]);
 return (0);
}
