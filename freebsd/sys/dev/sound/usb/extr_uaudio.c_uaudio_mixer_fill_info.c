
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct usb_device {int dummy; } ;
struct usb_descriptor {scalar_t__ bLength; scalar_t__ bDescriptorSubtype; } ;
struct usb_config_descriptor {int dummy; } ;
struct usb_audio_unit {size_t bUnitId; } ;
struct usb_audio_control_descriptor {int bLength; scalar_t__ bDescriptorType; scalar_t__ bDescriptorSubtype; int bcdADC; int wTotalLength; } ;
struct TYPE_6__ {struct usb_descriptor* desc; } ;
struct TYPE_7__ {int id_max; } ;
struct uaudio_terminal_node {TYPE_1__ u; struct uaudio_terminal_node* root; TYPE_2__ usr; } ;
struct TYPE_8__ {int is_input; scalar_t__ recurse_level; } ;
struct uaudio_softc {int sc_audio_rev; TYPE_5__ sc_mixer_clocks; } ;


 int DPRINTF (char*,...) ;
 int DPRINTFN (int,char*,int,scalar_t__) ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ UAUDIO_VERSION_20 ;
 scalar_t__ UAUDIO_VERSION_30 ;
 scalar_t__ UDESC_CS_INTERFACE ;
 scalar_t__ UGETW (int ) ;
 int free (struct uaudio_terminal_node*,int ) ;
 struct uaudio_terminal_node* malloc (int,int ,int) ;
 int uaudio20_mixer_add_feature (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio20_mixer_add_mixer (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio20_mixer_add_selector (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio20_mixer_find_clocks_sub (struct uaudio_terminal_node*,int*,int,TYPE_5__*) ;
 int uaudio20_mixer_find_inputs_sub (struct uaudio_terminal_node*,int*,int,TYPE_2__*) ;
 struct usb_audio_unit* uaudio20_mixer_verify_desc (struct usb_descriptor const*,int ) ;
 int uaudio_mixer_add_extension (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio_mixer_add_feature (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio_mixer_add_mixer (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio_mixer_add_processing (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio_mixer_add_selector (struct uaudio_softc*,struct uaudio_terminal_node*,int) ;
 int uaudio_mixer_find_inputs_sub (struct uaudio_terminal_node*,int*,int,TYPE_2__*) ;
 int uaudio_mixer_find_outputs_sub (struct uaudio_terminal_node*,int,int,TYPE_2__*) ;
 struct usb_audio_unit* uaudio_mixer_verify_desc (struct usb_descriptor const*,int ) ;
 void* usb_desc_foreach (struct usb_config_descriptor*,void*) ;
 struct usb_config_descriptor* usbd_get_config_descriptor (struct usb_device*) ;

__attribute__((used)) static void
uaudio_mixer_fill_info(struct uaudio_softc *sc,
    struct usb_device *udev, void *desc)
{
 const struct usb_audio_control_descriptor *acdp;
 struct usb_config_descriptor *cd = usbd_get_config_descriptor(udev);
 const struct usb_descriptor *dp;
 const struct usb_audio_unit *au;
 struct uaudio_terminal_node *iot = ((void*)0);
 uint16_t wTotalLen;
 uint8_t ID_max = 0;
 uint8_t i;

 desc = usb_desc_foreach(cd, desc);

 if (desc == ((void*)0)) {
  DPRINTF("no Audio Control header\n");
  goto done;
 }
 acdp = desc;

 if ((acdp->bLength < sizeof(*acdp)) ||
     (acdp->bDescriptorType != UDESC_CS_INTERFACE) ||
     (acdp->bDescriptorSubtype != 135)) {
  DPRINTF("invalid Audio Control header\n");
  goto done;
 }

 wTotalLen = UGETW(acdp->wTotalLength) - acdp->bLength;


 sc->sc_audio_rev = UGETW(acdp->bcdADC);

 DPRINTFN(3, "found AC header, vers=%03x, len=%d\n",
     sc->sc_audio_rev, wTotalLen);

 iot = malloc(sizeof(struct uaudio_terminal_node) * 256, M_TEMP,
     M_WAITOK | M_ZERO);

 if (iot == ((void*)0)) {
  DPRINTF("no memory!\n");
  goto done;
 }
 while ((desc = usb_desc_foreach(cd, desc))) {

  dp = desc;

  if (dp->bLength > wTotalLen) {
   break;
  } else {
   wTotalLen -= dp->bLength;
  }

  if (sc->sc_audio_rev >= UAUDIO_VERSION_30)
   au = ((void*)0);
  else if (sc->sc_audio_rev >= UAUDIO_VERSION_20)
   au = uaudio20_mixer_verify_desc(dp, 0);
  else
   au = uaudio_mixer_verify_desc(dp, 0);

  if (au) {
   iot[au->bUnitId].u.desc = (const void *)au;
   if (au->bUnitId > ID_max)
    ID_max = au->bUnitId;
  }
 }

 DPRINTF("Maximum ID=%d\n", ID_max);





 i = ID_max;
 do {
  if (sc->sc_audio_rev >= UAUDIO_VERSION_30) {

  } else if (sc->sc_audio_rev >= UAUDIO_VERSION_20) {
   uaudio20_mixer_find_inputs_sub(iot,
       &i, 1, &((iot + i)->usr));

   sc->sc_mixer_clocks.is_input = 255;
   sc->sc_mixer_clocks.recurse_level = 0;

   uaudio20_mixer_find_clocks_sub(iot,
       &i, 1, &sc->sc_mixer_clocks);
  } else {
   uaudio_mixer_find_inputs_sub(iot,
       &i, 1, &((iot + i)->usr));
  }
 } while (i--);





 i = ID_max;
 do {
  uaudio_mixer_find_outputs_sub(iot,
      i, ID_max, &((iot + i)->usr));
 } while (i--);



 i = ID_max;
 do {
  (iot + i)->usr.id_max = ID_max;
  (iot + i)->root = iot;
 } while (i--);





 i = ID_max;
 do {
  dp = iot[i].u.desc;

  if (dp == ((void*)0))
   continue;

  DPRINTFN(11, "id=%d subtype=%d\n",
      i, dp->bDescriptorSubtype);

  if (sc->sc_audio_rev >= UAUDIO_VERSION_30) {
   continue;
  } else if (sc->sc_audio_rev >= UAUDIO_VERSION_20) {

   switch (dp->bDescriptorSubtype) {
   case 135:
    DPRINTF("unexpected AC header\n");
    break;

   case 134:
   case 132:
   case 130:
   case 137:
   case 139:
   case 140:
   case 141:
   case 142:
   case 129:
    break;

   case 133:
    uaudio20_mixer_add_mixer(sc, iot, i);
    break;

   case 128:
    uaudio20_mixer_add_selector(sc, iot, i);
    break;

   case 136:
    uaudio20_mixer_add_feature(sc, iot, i);
    break;

   default:
    DPRINTF("bad AC desc subtype=0x%02x\n",
        dp->bDescriptorSubtype);
    break;
   }
   continue;
  }

  switch (dp->bDescriptorSubtype) {
  case 135:
   DPRINTF("unexpected AC header\n");
   break;

  case 134:
  case 132:
   break;

  case 133:
   uaudio_mixer_add_mixer(sc, iot, i);
   break;

  case 128:
   uaudio_mixer_add_selector(sc, iot, i);
   break;

  case 136:
   uaudio_mixer_add_feature(sc, iot, i);
   break;

  case 131:
   uaudio_mixer_add_processing(sc, iot, i);
   break;

  case 138:
   uaudio_mixer_add_extension(sc, iot, i);
   break;

  default:
   DPRINTF("bad AC desc subtype=0x%02x\n",
       dp->bDescriptorSubtype);
   break;
  }

 } while (i--);

done:
 free(iot, M_TEMP);
}
