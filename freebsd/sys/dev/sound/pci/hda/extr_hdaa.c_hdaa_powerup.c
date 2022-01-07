
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdaa_devinfo {int nid; int startnode; int endnode; int dev; } ;


 int DELAY (int) ;
 int HDA_CMD_POWER_STATE_D0 ;
 int HDA_CMD_SET_POWER_STATE (int ,int,int ) ;
 int hda_command (int ,int ) ;

__attribute__((used)) static void
hdaa_powerup(struct hdaa_devinfo *devinfo)
{
 int i;

 hda_command(devinfo->dev,
     HDA_CMD_SET_POWER_STATE(0,
     devinfo->nid, HDA_CMD_POWER_STATE_D0));
 DELAY(100);

 for (i = devinfo->startnode; i < devinfo->endnode; i++) {
  hda_command(devinfo->dev,
      HDA_CMD_SET_POWER_STATE(0,
      i, HDA_CMD_POWER_STATE_D0));
 }
 DELAY(1000);
}
