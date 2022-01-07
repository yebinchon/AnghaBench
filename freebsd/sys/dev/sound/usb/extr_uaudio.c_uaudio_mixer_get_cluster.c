
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct usb_descriptor {int bDescriptorSubtype; } ;
struct usb_audio_cluster {int iChannelNames; int * wChannelConfig; int bNrChannels; } ;
struct TYPE_16__ {TYPE_7__* eu_v1; TYPE_6__* pu_v1; TYPE_5__* fu_v1; TYPE_4__* su_v1; TYPE_3__* mu_v1; TYPE_2__* ot_v1; TYPE_1__* it_v1; struct usb_descriptor* desc; } ;
struct uaudio_terminal_node {TYPE_8__ u; } ;
typedef int r ;
struct TYPE_15__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_14__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_13__ {scalar_t__ bSourceId; } ;
struct TYPE_12__ {scalar_t__* baSourceId; int bNrInPins; } ;
struct TYPE_11__ {size_t bNrInPins; int * baSourceId; } ;
struct TYPE_10__ {scalar_t__ bSourceId; } ;
struct TYPE_9__ {int iChannelNames; int * wChannelConfig; int bNrChannels; } ;


 int DPRINTF (char*) ;
 scalar_t__ UAUDIO_RECURSE_LIMIT ;







 int memset (struct usb_audio_cluster*,int ,int) ;

__attribute__((used)) static struct usb_audio_cluster
uaudio_mixer_get_cluster(uint8_t id, const struct uaudio_terminal_node *iot)
{
 struct usb_audio_cluster r;
 const struct usb_descriptor *dp;
 uint8_t i;

 for (i = 0; i < UAUDIO_RECURSE_LIMIT; i++) {
  dp = iot[id].u.desc;
  if (dp == ((void*)0)) {
   goto error;
  }
  switch (dp->bDescriptorSubtype) {
  case 132:
   r.bNrChannels = iot[id].u.it_v1->bNrChannels;
   r.wChannelConfig[0] = iot[id].u.it_v1->wChannelConfig[0];
   r.wChannelConfig[1] = iot[id].u.it_v1->wChannelConfig[1];
   r.iChannelNames = iot[id].u.it_v1->iChannelNames;
   goto done;

  case 130:
   id = iot[id].u.ot_v1->bSourceId;
   break;

  case 131:
   r = *(const struct usb_audio_cluster *)
       &iot[id].u.mu_v1->baSourceId[
       iot[id].u.mu_v1->bNrInPins];
   goto done;

  case 128:
   if (iot[id].u.su_v1->bNrInPins > 0) {

    id = iot[id].u.su_v1->baSourceId[0];
   }
   break;

  case 133:
   id = iot[id].u.fu_v1->bSourceId;
   break;

  case 129:
   r = *((const struct usb_audio_cluster *)
       &iot[id].u.pu_v1->baSourceId[
       iot[id].u.pu_v1->bNrInPins]);
   goto done;

  case 134:
   r = *((const struct usb_audio_cluster *)
       &iot[id].u.eu_v1->baSourceId[
       iot[id].u.eu_v1->bNrInPins]);
   goto done;

  default:
   goto error;
  }
 }
error:
 DPRINTF("bad data\n");
 memset(&r, 0, sizeof(r));
done:
 return (r);
}
