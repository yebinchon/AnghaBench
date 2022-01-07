
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
g_raid_disk_state2str(int state)
{

 switch (state) {
 case 132:
  return ("NONE");
 case 131:
  return ("OFFLINE");
 case 134:
  return ("DISABLED");
 case 133:
  return ("FAILED");
 case 128:
  return ("STALE_FAILED");
 case 130:
  return ("SPARE");
 case 129:
  return ("STALE");
 case 135:
  return ("ACTIVE");
 default:
  return ("INVALID");
 }
}
