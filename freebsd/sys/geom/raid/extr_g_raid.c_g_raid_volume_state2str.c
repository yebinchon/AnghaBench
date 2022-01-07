
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
g_raid_volume_state2str(int state)
{

 switch (state) {
 case 131:
  return ("STARTING");
 case 134:
  return ("BROKEN");
 case 133:
  return ("DEGRADED");
 case 129:
  return ("SUBOPTIMAL");
 case 132:
  return ("OPTIMAL");
 case 128:
  return ("UNSUPPORTED");
 case 130:
  return ("STOPPED");
 default:
  return ("INVALID");
 }
}
