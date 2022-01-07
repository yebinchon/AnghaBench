
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct adapter {scalar_t__ max_frame_size; } ;
typedef int if_ctx_t ;


 int EINVAL ;
 int IOCTL_DEBUGOUT (char*) ;
 scalar_t__ IXGBE_MAX_MTU ;
 scalar_t__ IXGBE_MTU_HDR ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static int
ixgbe_if_mtu_set(if_ctx_t ctx, uint32_t mtu)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 int error = 0;

 IOCTL_DEBUGOUT("ioctl: SIOCIFMTU (Set Interface MTU)");

 if (mtu > IXGBE_MAX_MTU) {
  error = EINVAL;
 } else {
  adapter->max_frame_size = mtu + IXGBE_MTU_HDR;
 }

 return error;
}
