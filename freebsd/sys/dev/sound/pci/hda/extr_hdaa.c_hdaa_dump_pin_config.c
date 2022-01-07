
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct hdaa_widget {scalar_t__ enable; int nid; TYPE_1__* devinfo; } ;
struct TYPE_2__ {int dev; } ;


 int * HDA_COLORS ;
 int HDA_CONFIG_DEFAULTCONF_ASSOCIATION (int ) ;
 size_t HDA_CONFIG_DEFAULTCONF_COLOR (int ) ;
 size_t HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE (int ) ;
 size_t HDA_CONFIG_DEFAULTCONF_CONNECTIVITY (int ) ;
 size_t HDA_CONFIG_DEFAULTCONF_DEVICE (int ) ;
 size_t HDA_CONFIG_DEFAULTCONF_LOCATION (int ) ;
 int HDA_CONFIG_DEFAULTCONF_MISC (int ) ;
 int HDA_CONFIG_DEFAULTCONF_SEQUENCE (int ) ;
 int * HDA_CONNECTORS ;
 int * HDA_CONNS ;
 int * HDA_DEVS ;
 int * HDA_LOCS ;
 int device_printf (int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static void
hdaa_dump_pin_config(struct hdaa_widget *w, uint32_t conf)
{

 device_printf(w->devinfo->dev, "%2d %08x %-2d %-2d "
     "%-13s %-5s %-7s %-10s %-7s %d%s\n",
     w->nid, conf,
     HDA_CONFIG_DEFAULTCONF_ASSOCIATION(conf),
     HDA_CONFIG_DEFAULTCONF_SEQUENCE(conf),
     HDA_DEVS[HDA_CONFIG_DEFAULTCONF_DEVICE(conf)],
     HDA_CONNS[HDA_CONFIG_DEFAULTCONF_CONNECTIVITY(conf)],
     HDA_CONNECTORS[HDA_CONFIG_DEFAULTCONF_CONNECTION_TYPE(conf)],
     HDA_LOCS[HDA_CONFIG_DEFAULTCONF_LOCATION(conf)],
     HDA_COLORS[HDA_CONFIG_DEFAULTCONF_COLOR(conf)],
     HDA_CONFIG_DEFAULTCONF_MISC(conf),
     (w->enable == 0)?" DISA":"");
}
