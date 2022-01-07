
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ pin; } ;
struct hdaa_widget {scalar_t__ enable; int bindas; int type; int ossdev; TYPE_2__ wclass; } ;
struct hdaa_devinfo {int startnode; int endnode; struct hdaa_audio_as* as; } ;
struct hdaa_audio_as {scalar_t__ dir; } ;


 scalar_t__ HDAA_CTL_OUT ;
 int HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_JACK ;
 int HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK ;







 int HDA_CONFIG_DEFAULTCONF_DEVICE_MASK ;
 int SOUND_MIXER_PCM ;





 struct hdaa_widget* hdaa_widget_get (struct hdaa_devinfo*,int) ;

__attribute__((used)) static void
hdaa_audio_assign_names(struct hdaa_devinfo *devinfo)
{
 struct hdaa_audio_as *as = devinfo->as;
 struct hdaa_widget *w;
 int i, j;
 int type = -1, use, used = 0;
 static const int types[7][13] = {
     { 138, 137, 136,
       135, -1 },
     { 133, 134, -1 },
     { 134, 133, -1 },
     { 142, -1 },
     { 129, -1 },
     { 141, 140, 139,
       -1 },
     { 138, 137, 136,
       135, 132, 131,
       128, 130, 141,
       140, 139, 133,
       -1 }
 };


 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->enable == 0)
   continue;
  if (w->bindas == -1)
   continue;
  use = -1;
  switch (w->type) {
  case 143:
   if (as[w->bindas].dir == HDAA_CTL_OUT)
    break;
   type = -1;
   switch (w->wclass.pin.config & HDA_CONFIG_DEFAULTCONF_DEVICE_MASK) {
   case 151:
    type = 0;
    break;
   case 149:
    if ((w->wclass.pin.config & HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK)
        == HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_JACK)
     break;
    type = 1;
    break;
   case 155:
    type = 3;
    break;
   case 146:
    type = 4;
    break;
   case 148:
   case 154:
    type = 5;
    break;
   }
   if (type == -1)
    break;
   j = 0;
   while (types[type][j] >= 0 &&
       (used & (1 << types[type][j])) != 0) {
    j++;
   }
   if (types[type][j] >= 0)
    use = types[type][j];
   break;
  case 145:
   use = SOUND_MIXER_PCM;
   break;
  case 144:
   use = 129;
   break;
  default:
   break;
  }
  if (use >= 0) {
   w->ossdev = use;
   used |= (1 << use);
  }
 }

 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->enable == 0)
   continue;
  if (w->ossdev >= 0)
   continue;
  if (w->bindas == -1)
   continue;
  if (w->type != 143)
   continue;
  if (as[w->bindas].dir == HDAA_CTL_OUT)
   continue;
  type = -1;
  switch (w->wclass.pin.config & HDA_CONFIG_DEFAULTCONF_DEVICE_MASK) {
  case 150:
  case 146:
  case 152:
  case 156:
   type = 0;
   break;
  case 149:
   type = 2;
   break;
  case 147:
  case 153:
   type = 5;
   break;
  }
  if (type == -1)
   break;
  j = 0;
  while (types[type][j] >= 0 &&
      (used & (1 << types[type][j])) != 0) {
   j++;
  }
  if (types[type][j] >= 0) {
   w->ossdev = types[type][j];
   used |= (1 << types[type][j]);
  }
 }

 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  w = hdaa_widget_get(devinfo, i);
  if (w == ((void*)0) || w->enable == 0)
   continue;
  if (w->ossdev >= 0)
   continue;
  if (w->bindas == -1)
   continue;
  if (w->type != 143)
   continue;
  if (as[w->bindas].dir == HDAA_CTL_OUT)
   continue;
  j = 0;
  while (types[6][j] >= 0 &&
      (used & (1 << types[6][j])) != 0) {
   j++;
  }
  if (types[6][j] >= 0) {
   w->ossdev = types[6][j];
   used |= (1 << types[6][j]);
  }
 }
}
