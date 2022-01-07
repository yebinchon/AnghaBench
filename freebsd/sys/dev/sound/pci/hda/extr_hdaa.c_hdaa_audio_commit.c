
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ eapdbtl; } ;
struct TYPE_4__ {int ctrl; } ;
struct TYPE_5__ {TYPE_1__ pin; } ;
struct hdaa_widget {int selconn; scalar_t__ nconns; scalar_t__ type; int nid; TYPE_3__ param; TYPE_2__ wclass; scalar_t__ waspin; } ;
struct hdaa_devinfo {int nodecnt; int quirks; int dev; struct hdaa_widget* widget; } ;


 int HDAA_QUIRK_EAPDINV ;
 int HDA_CMD_SET_EAPD_BTL_ENABLE (int ,int ,scalar_t__) ;
 scalar_t__ HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD ;
 int HDA_CMD_SET_PIN_WIDGET_CTRL (int ,int ,int ) ;
 scalar_t__ HDA_INVALID ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int hda_command (int ,int ) ;
 int hdaa_audio_ctl_commit (struct hdaa_devinfo*) ;
 int hdaa_gpio_commit (struct hdaa_devinfo*) ;
 int hdaa_gpo_commit (struct hdaa_devinfo*) ;
 int hdaa_widget_connection_select (struct hdaa_widget*,int) ;

__attribute__((used)) static void
hdaa_audio_commit(struct hdaa_devinfo *devinfo)
{
 struct hdaa_widget *w;
 int i;


 hdaa_audio_ctl_commit(devinfo);


 for (i = 0; i < devinfo->nodecnt; i++) {
  w = &devinfo->widget[i];
  if (w == ((void*)0))
   continue;
  if (w->selconn == -1)
   w->selconn = 0;
  if (w->nconns > 0)
   hdaa_widget_connection_select(w, w->selconn);
  if (w->type == HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ||
      w->waspin) {
   hda_command(devinfo->dev,
       HDA_CMD_SET_PIN_WIDGET_CTRL(0, w->nid,
       w->wclass.pin.ctrl));
  }
  if (w->param.eapdbtl != HDA_INVALID) {
   uint32_t val;

   val = w->param.eapdbtl;
   if (devinfo->quirks &
       HDAA_QUIRK_EAPDINV)
    val ^= HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD;
   hda_command(devinfo->dev,
       HDA_CMD_SET_EAPD_BTL_ENABLE(0, w->nid,
       val));
  }
 }

 hdaa_gpio_commit(devinfo);
 hdaa_gpo_commit(devinfo);
}
