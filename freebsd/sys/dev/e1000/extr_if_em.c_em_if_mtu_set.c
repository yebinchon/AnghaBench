
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int type; int max_frame_size; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct adapter {TYPE_2__ hw; } ;
typedef TYPE_3__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_7__ {int isc_max_frame_size; } ;


 int EINVAL ;
 int ETHER_CRC_LEN ;
 int ETHER_HDR_LEN ;
 int ETHER_MAX_LEN ;
 int IOCTL_DEBUGOUT (char*) ;
 int MAX_JUMBO_FRAME_SIZE ;
 struct adapter* iflib_get_softc (int ) ;
 TYPE_3__* iflib_get_softc_ctx (int ) ;
 int igb_mac_min ;

__attribute__((used)) static int
em_if_mtu_set(if_ctx_t ctx, uint32_t mtu)
{
 int max_frame_size;
 struct adapter *adapter = iflib_get_softc(ctx);
 if_softc_ctx_t scctx = iflib_get_softc_ctx(ctx);

  IOCTL_DEBUGOUT("ioctl rcv'd: SIOCSIFMTU (Set Interface MTU)");

 switch (adapter->hw.mac.type) {
 case 139:
 case 138:
 case 133:
 case 135:
 case 132:
 case 130:
 case 129:
 case 131:
 case 137:
 case 136:
 case 141:

  max_frame_size = 9234;
  break;
 case 128:
  max_frame_size = 4096;
  break;
 case 140:
 case 134:

  max_frame_size = ETHER_MAX_LEN;
  break;
 default:
  if (adapter->hw.mac.type >= igb_mac_min)
   max_frame_size = 9234;
  else
   max_frame_size = MAX_JUMBO_FRAME_SIZE;
 }
 if (mtu > max_frame_size - ETHER_HDR_LEN - ETHER_CRC_LEN) {
  return (EINVAL);
 }

 scctx->isc_max_frame_size = adapter->hw.mac.max_frame_size =
     mtu + ETHER_HDR_LEN + ETHER_CRC_LEN;
 return (0);
}
