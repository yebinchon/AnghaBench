
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef scalar_t__ uint8_t ;
struct usb_descriptor {int bDescriptorSubtype; } ;
struct usb_audio20_cluster {int iChannelNames; int * bmChannelConfig; int bNrChannels; } ;
struct TYPE_11__ {TYPE_9__* eu_v2; TYPE_8__* pu_v2; TYPE_7__* fu_v2; TYPE_6__* ef_v2; TYPE_5__* ru_v2; TYPE_4__* su_v2; TYPE_3__* mu_v2; TYPE_2__* ot_v2; TYPE_1__* it_v2; struct usb_descriptor* desc; } ;
struct uaudio_terminal_node {TYPE_10__ u; } ;
typedef int r ;
struct TYPE_20__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_19__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_18__ {scalar_t__ bSourceId; } ;
struct TYPE_17__ {scalar_t__ bSourceId; } ;
struct TYPE_16__ {scalar_t__ bSourceId; } ;
struct TYPE_15__ {scalar_t__* baSourceId; int bNrInPins; } ;
struct TYPE_14__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_13__ {scalar_t__ bSourceId; } ;
struct TYPE_12__ {int iTerminal; int * bmChannelConfig; int bNrChannels; } ;


 int DPRINTF (char*) ;
 scalar_t__ UAUDIO_RECURSE_LIMIT ;
 int memset (struct usb_audio20_cluster*,int ,int) ;

__attribute__((used)) static struct usb_audio20_cluster
uaudio20_mixer_get_cluster(uint8_t id, const struct uaudio_terminal_node *iot)
{
 struct usb_audio20_cluster r;
 const struct usb_descriptor *dp;
 uint8_t i;

 for (i = 0; i < UAUDIO_RECURSE_LIMIT; i++) {
  dp = iot[id].u.desc;
  if (dp == ((void*)0))
   goto error;

  switch (dp->bDescriptorSubtype) {
  case 133:
   r.bNrChannels = iot[id].u.it_v2->bNrChannels;
   r.bmChannelConfig[0] = iot[id].u.it_v2->bmChannelConfig[0];
   r.bmChannelConfig[1] = iot[id].u.it_v2->bmChannelConfig[1];
   r.bmChannelConfig[2] = iot[id].u.it_v2->bmChannelConfig[2];
   r.bmChannelConfig[3] = iot[id].u.it_v2->bmChannelConfig[3];
   r.iChannelNames = iot[id].u.it_v2->iTerminal;
   goto done;

  case 131:
   id = iot[id].u.ot_v2->bSourceId;
   break;

  case 132:
   r = *(const struct usb_audio20_cluster *)
       &iot[id].u.mu_v2->baSourceId[
       iot[id].u.mu_v2->bNrInPins];
   goto done;

  case 128:
   if (iot[id].u.su_v2->bNrInPins > 0) {

    id = iot[id].u.su_v2->baSourceId[0];
   }
   break;

  case 129:
   id = iot[id].u.ru_v2->bSourceId;
   break;

  case 136:
   id = iot[id].u.ef_v2->bSourceId;
   break;

  case 134:
   id = iot[id].u.fu_v2->bSourceId;
   break;

  case 130:
   r = *((const struct usb_audio20_cluster *)
       &iot[id].u.pu_v2->baSourceId[
       iot[id].u.pu_v2->bNrInPins]);
   goto done;

  case 135:
   r = *((const struct usb_audio20_cluster *)
       &iot[id].u.eu_v2->baSourceId[
       iot[id].u.eu_v2->bNrInPins]);
   goto done;

  default:
   goto error;
  }
 }
error:
 DPRINTF("Bad data!\n");
 memset(&r, 0, sizeof(r));
done:
 return (r);
}
