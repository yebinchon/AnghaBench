
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_widget {scalar_t__ enable; scalar_t__ type; int unsol; int nid; } ;
struct hdaa_devinfo {int startnode; int endnode; int dev; int poll_jack; } ;


 int HDAC_UNSOL_FREE (int ,int ,int) ;
 int HDA_CMD_SET_UNSOLICITED_RESPONSE (int ,int ,int ) ;
 scalar_t__ HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX ;
 int callout_stop (int *) ;
 int device_get_parent (int ) ;
 int hda_command (int ,int ) ;
 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;

__attribute__((used)) static void
hdaa_sense_deinit(struct hdaa_devinfo *devinfo)
{
 struct hdaa_widget *w;
 int i;

 callout_stop(&devinfo->poll_jack);
 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->enable == 0 || w->type !=
      HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX)
   continue;
  if (w->unsol < 0)
   continue;
  hda_command(devinfo->dev,
      HDA_CMD_SET_UNSOLICITED_RESPONSE(0, w->nid, 0));
  HDAC_UNSOL_FREE(
      device_get_parent(devinfo->dev), devinfo->dev,
      w->unsol);
  w->unsol = -1;
 }
}
