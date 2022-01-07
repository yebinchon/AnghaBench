
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int inamp_cap; } ;
struct TYPE_7__ {int config; } ;
struct TYPE_8__ {TYPE_2__ pin; } ;
struct hdaa_widget {TYPE_1__ param; int * connsenable; int enable; TYPE_3__ wclass; int type; } ;
struct hdaa_devinfo {int startnode; int endnode; int quirks; int gpio; int dev; } ;
struct TYPE_9__ {int gpio; int unset; int set; int subsystemid; int id; int model; } ;


 int ASUS_A8X_SUBVENDOR ;
 int HDAA_QUIRK_EAPDINV ;
 int HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK ;
 int HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_NONE ;
 int HDA_CONFIG_DEFAULTCONF_DEVICE_MASK ;
 int HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN ;
 scalar_t__ HDA_DEV_MATCH (int ,int) ;
 int HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT ;
 int HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT ;
 int HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT ;
 int hda_get_subsystem_id (int ) ;
 int hdaa_card_id (struct hdaa_devinfo*) ;
 int hdaa_codec_id (struct hdaa_devinfo*) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 int hdaa_widget_patch (struct hdaa_widget*) ;
 TYPE_4__* hdac_quirks ;
 int nitems (TYPE_4__*) ;

void
hdaa_patch(struct hdaa_devinfo *devinfo)
{
 struct hdaa_widget *w;
 uint32_t id, subid, subsystemid;
 int i;

 id = hdaa_codec_id(devinfo);
 subid = hdaa_card_id(devinfo);
 subsystemid = hda_get_subsystem_id(devinfo->dev);




 for (i = 0; i < nitems(hdac_quirks); i++) {
  if (!(HDA_DEV_MATCH(hdac_quirks[i].model, subid) &&
      HDA_DEV_MATCH(hdac_quirks[i].id, id) &&
      HDA_DEV_MATCH(hdac_quirks[i].subsystemid, subsystemid)))
   continue;
  devinfo->quirks |= hdac_quirks[i].set;
  devinfo->quirks &= ~(hdac_quirks[i].unset);
  devinfo->gpio = hdac_quirks[i].gpio;
 }


 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0))
   continue;
  hdaa_widget_patch(w);
 }

 switch (id) {
 case 143:





  w = hdaa_widget_get(devinfo, 5);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  w = hdaa_widget_get(devinfo, 6);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  w = hdaa_widget_get(devinfo, 11);
  if (w != ((void*)0))
   w->connsenable[0] = 0;

  w = hdaa_widget_get(devinfo, 12);
  if (w != ((void*)0))
   w->connsenable[1] = 0;
  w = hdaa_widget_get(devinfo, 13);
  if (w != ((void*)0))
   w->connsenable[1] = 0;

  w = hdaa_widget_get(devinfo, 20);
  if (w != ((void*)0))
   w->connsenable[3] = 0;
  break;
 case 142:





  w = hdaa_widget_get(devinfo, 43);
  if (w != ((void*)0))
   w->enable = 0;

  w = hdaa_widget_get(devinfo, 39);
  if (w != ((void*)0))
   w->enable = 0;
  w = hdaa_widget_get(devinfo, 40);
  if (w != ((void*)0))
   w->enable = 0;
  w = hdaa_widget_get(devinfo, 41);
  if (w != ((void*)0))
   w->enable = 0;
  w = hdaa_widget_get(devinfo, 42);
  if (w != ((void*)0))
   w->enable = 0;

  w = hdaa_widget_get(devinfo, 15);
  if (w != ((void*)0))
   w->connsenable[3] = 0;

  w = hdaa_widget_get(devinfo, 31);
  if (w != ((void*)0)) {
   if ((w->wclass.pin.config &
       HDA_CONFIG_DEFAULTCONF_DEVICE_MASK) ==
       HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN) {
    w = hdaa_widget_get(devinfo, 16);
    if (w != ((void*)0))
        w->connsenable[2] = 0;
   } else {
    w = hdaa_widget_get(devinfo, 15);
    if (w != ((void*)0))
        w->connsenable[0] = 0;
   }
  }
  w = hdaa_widget_get(devinfo, 32);
  if (w != ((void*)0)) {
   if ((w->wclass.pin.config &
       HDA_CONFIG_DEFAULTCONF_DEVICE_MASK) ==
       HDA_CONFIG_DEFAULTCONF_DEVICE_MIC_IN) {
    w = hdaa_widget_get(devinfo, 16);
    if (w != ((void*)0))
        w->connsenable[0] = 0;
   } else {
    w = hdaa_widget_get(devinfo, 15);
    if (w != ((void*)0))
        w->connsenable[1] = 0;
   }
  }

  if (subid == ASUS_A8X_SUBVENDOR) {





   w = hdaa_widget_get(devinfo, 26);
   if (w != ((void*)0) && w->type ==
       HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX &&
       (w->wclass.pin.config &
       HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK) !=
       HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_NONE)
    devinfo->quirks &=
        ~HDAA_QUIRK_EAPDINV;
  }
  break;
 case 144:





  w = hdaa_widget_get(devinfo, 21);
  if (w != ((void*)0))
   w->connsenable[3] = 0;

  w = hdaa_widget_get(devinfo, 31);
  if (w != ((void*)0))
   w->enable = 0;

  w = hdaa_widget_get(devinfo, 5);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  w = hdaa_widget_get(devinfo, 6);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  w = hdaa_widget_get(devinfo, 9);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  w = hdaa_widget_get(devinfo, 24);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  break;
 case 141:
  if (subid == 0x84371043) {
   w = hdaa_widget_get(devinfo, 15);
   if (w != ((void*)0))
    w->param.inamp_cap = 0;
  }
  break;
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:




  w = hdaa_widget_get(devinfo, 20);
  if (w != ((void*)0))
   w->connsenable[1] = 0;
  w = hdaa_widget_get(devinfo, 21);
  if (w != ((void*)0))
   w->connsenable[1] = 0;
  w = hdaa_widget_get(devinfo, 22);
  if (w != ((void*)0))
   w->connsenable[0] = 0;
  break;
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:



  w = hdaa_widget_get(devinfo, 26);
  if (w != ((void*)0))
   w->param.inamp_cap =
       (40 << HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT) |
       (3 << HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT) |
       (0 << HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT);
  w = hdaa_widget_get(devinfo, 30);
  if (w != ((void*)0))
   w->param.inamp_cap =
       (40 << HDA_PARAM_OUTPUT_AMP_CAP_STEPSIZE_SHIFT) |
       (3 << HDA_PARAM_OUTPUT_AMP_CAP_NUMSTEPS_SHIFT) |
       (0 << HDA_PARAM_OUTPUT_AMP_CAP_OFFSET_SHIFT);
  break;
 }
}
