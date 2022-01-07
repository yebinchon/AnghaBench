
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ifmediareq {int dummy; } ;
struct hwrm_async_event_cmpl {int event_id; } ;
struct cmpl_base {int dummy; } ;
struct bnxt_softc {int dev; int ctx; } ;
 int bnxt_media_status (int ,struct ifmediareq*) ;
 int device_printf (int ,char*,int) ;
 int le16toh (int ) ;

__attribute__((used)) static void
bnxt_handle_async_event(struct bnxt_softc *softc, struct cmpl_base *cmpl)
{
 struct hwrm_async_event_cmpl *ae = (void *)cmpl;
 uint16_t async_id = le16toh(ae->event_id);
 struct ifmediareq ifmr;

 switch (async_id) {
 case 135:
 case 136:
 case 138:
  bnxt_media_status(softc->ctx, &ifmr);
  break;
 case 139:
 case 143:
 case 131:
 case 137:
 case 141:
 case 142:
 case 133:
 case 134:
 case 129:
 case 128:
 case 132:
 case 130:
 case 140:
  device_printf(softc->dev,
      "Unhandled async completion type %u\n", async_id);
  break;
 default:
  device_printf(softc->dev,
      "Unknown async completion type %u\n", async_id);
  break;
 }
}
