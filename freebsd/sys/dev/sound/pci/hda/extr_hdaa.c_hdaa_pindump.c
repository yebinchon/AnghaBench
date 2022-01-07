
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int widget_cap; } ;
struct TYPE_4__ {int cap; int config; } ;
struct TYPE_5__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ type; TYPE_3__ param; int nid; TYPE_2__ wclass; } ;
struct hdaa_devinfo {int startnode; int endnode; int gpio_cap; } ;
typedef int device_t ;


 int DELAY (int) ;
 int HDA_CMD_GET_PIN_SENSE (int ,int ) ;
 int HDA_CMD_GET_PIN_SENSE_ELD_VALID ;
 int HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT ;
 int HDA_CMD_SET_PIN_SENSE (int ,int ,int ) ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL (int ) ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 char* HDA_PARAM_GPIO_COUNT_GPI_UNSOL (int ) ;
 char* HDA_PARAM_GPIO_COUNT_GPI_WAKE (int ) ;
 char* HDA_PARAM_GPIO_COUNT_NUM_GPI (int ) ;
 char* HDA_PARAM_GPIO_COUNT_NUM_GPIO (int ) ;
 char* HDA_PARAM_GPIO_COUNT_NUM_GPO (int ) ;
 scalar_t__ HDA_PARAM_PIN_CAP_EAPD_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_HEADPHONE_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_IMP_SENSE_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_INPUT_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_OUTPUT_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_TRIGGER_REQD (int) ;
 scalar_t__ HDA_PARAM_PIN_CAP_VREF_CTRL (int) ;
 struct hdaa_devinfo* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hda_command (int ,int ) ;
 int hdaa_dump_gpi (struct hdaa_devinfo*) ;
 int hdaa_dump_gpio (struct hdaa_devinfo*) ;
 int hdaa_dump_gpo (struct hdaa_devinfo*) ;
 int hdaa_dump_pin_config (struct hdaa_widget*,int ) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
hdaa_pindump(device_t dev)
{
 struct hdaa_devinfo *devinfo = device_get_softc(dev);
 struct hdaa_widget *w;
 uint32_t res, pincap, delay;
 int i;

 device_printf(dev, "Dumping AFG pins:\n");
 device_printf(dev, "nid   0x    as seq "
     "device       conn  jack    loc        color   misc\n");
 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->type !=
      HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
   continue;
  hdaa_dump_pin_config(w, w->wclass.pin.config);
  pincap = w->wclass.pin.cap;
  device_printf(dev, "    Caps: %2s %3s %2s %4s %4s",
      HDA_PARAM_PIN_CAP_INPUT_CAP(pincap)?"IN":"",
      HDA_PARAM_PIN_CAP_OUTPUT_CAP(pincap)?"OUT":"",
      HDA_PARAM_PIN_CAP_HEADPHONE_CAP(pincap)?"HP":"",
      HDA_PARAM_PIN_CAP_EAPD_CAP(pincap)?"EAPD":"",
      HDA_PARAM_PIN_CAP_VREF_CTRL(pincap)?"VREF":"");
  if (HDA_PARAM_PIN_CAP_IMP_SENSE_CAP(pincap) ||
      HDA_PARAM_PIN_CAP_PRESENCE_DETECT_CAP(pincap)) {
   if (HDA_PARAM_PIN_CAP_TRIGGER_REQD(pincap)) {
    delay = 0;
    hda_command(dev,
        HDA_CMD_SET_PIN_SENSE(0, w->nid, 0));
    do {
     res = hda_command(dev,
         HDA_CMD_GET_PIN_SENSE(0, w->nid));
     if (res != 0x7fffffff && res != 0xffffffff)
      break;
     DELAY(10);
    } while (++delay < 10000);
   } else {
    delay = 0;
    res = hda_command(dev, HDA_CMD_GET_PIN_SENSE(0,
        w->nid));
   }
   printf(" Sense: 0x%08x (%sconnected%s)", res,
       (res & HDA_CMD_GET_PIN_SENSE_PRESENCE_DETECT) ?
        "" : "dis",
       (HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(w->param.widget_cap) &&
        (res & HDA_CMD_GET_PIN_SENSE_ELD_VALID)) ?
         ", ELD valid" : "");
   if (delay > 0)
    printf(" delay %dus", delay * 10);
  }
  printf("\n");
 }
 device_printf(dev,
     "NumGPIO=%d NumGPO=%d NumGPI=%d GPIWake=%d GPIUnsol=%d\n",
     HDA_PARAM_GPIO_COUNT_NUM_GPIO(devinfo->gpio_cap),
     HDA_PARAM_GPIO_COUNT_NUM_GPO(devinfo->gpio_cap),
     HDA_PARAM_GPIO_COUNT_NUM_GPI(devinfo->gpio_cap),
     HDA_PARAM_GPIO_COUNT_GPI_WAKE(devinfo->gpio_cap),
     HDA_PARAM_GPIO_COUNT_GPI_UNSOL(devinfo->gpio_cap));
 hdaa_dump_gpi(devinfo);
 hdaa_dump_gpio(devinfo);
 hdaa_dump_gpo(devinfo);
}
