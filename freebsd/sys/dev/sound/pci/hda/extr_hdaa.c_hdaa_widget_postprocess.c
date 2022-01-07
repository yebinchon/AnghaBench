
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t config; } ;
struct TYPE_6__ {TYPE_2__ pin; } ;
struct TYPE_4__ {int widget_cap; } ;
struct hdaa_widget {int type; int name; TYPE_3__ wclass; TYPE_1__ param; } ;


 char** HDA_COLORS ;
 size_t HDA_CONFIG_DEFAULTCONF_COLOR_MASK ;
 size_t HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT ;
 size_t HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK ;
 size_t HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT ;
 size_t HDA_CONFIG_DEFAULTCONF_DEVICE_MASK ;
 size_t HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT ;
 char** HDA_CONNS ;
 char** HDA_DEVS ;
 int HDA_PARAM_AUDIO_WIDGET_CAP_TYPE (int ) ;
 int strlcat (int ,char const*,int) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static void
hdaa_widget_postprocess(struct hdaa_widget *w)
{
 const char *typestr;

 w->type = HDA_PARAM_AUDIO_WIDGET_CAP_TYPE(w->param.widget_cap);
 switch (w->type) {
 case 134:
  typestr = "audio output";
  break;
 case 136:
  typestr = "audio input";
  break;
 case 135:
  typestr = "audio mixer";
  break;
 case 133:
  typestr = "audio selector";
  break;
 case 131:
  typestr = "pin";
  break;
 case 130:
  typestr = "power widget";
  break;
 case 128:
  typestr = "volume widget";
  break;
 case 132:
  typestr = "beep widget";
  break;
 case 129:
  typestr = "vendor widget";
  break;
 default:
  typestr = "unknown type";
  break;
 }
 strlcpy(w->name, typestr, sizeof(w->name));

 if (w->type == 131) {
  uint32_t config;
  const char *devstr;
  int conn, color;

  config = w->wclass.pin.config;
  devstr = HDA_DEVS[(config & HDA_CONFIG_DEFAULTCONF_DEVICE_MASK) >>
      HDA_CONFIG_DEFAULTCONF_DEVICE_SHIFT];
  conn = (config & HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_MASK) >>
      HDA_CONFIG_DEFAULTCONF_CONNECTIVITY_SHIFT;
  color = (config & HDA_CONFIG_DEFAULTCONF_COLOR_MASK) >>
      HDA_CONFIG_DEFAULTCONF_COLOR_SHIFT;
  strlcat(w->name, ": ", sizeof(w->name));
  strlcat(w->name, devstr, sizeof(w->name));
  strlcat(w->name, " (", sizeof(w->name));
  if (conn == 0 && color != 0 && color != 15) {
   strlcat(w->name, HDA_COLORS[color], sizeof(w->name));
   strlcat(w->name, " ", sizeof(w->name));
  }
  strlcat(w->name, HDA_CONNS[conn], sizeof(w->name));
  strlcat(w->name, ")", sizeof(w->name));
 }
}
