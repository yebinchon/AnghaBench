
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
g_raid_subdisk_state2str(int state)
{

 switch (state) {
 case 132:
  return ("NONE");
 case 134:
  return ("FAILED");
 case 133:
  return ("NEW");
 case 131:
  return ("REBUILD");
 case 128:
  return ("UNINITIALIZED");
 case 129:
  return ("STALE");
 case 130:
  return ("RESYNC");
 case 135:
  return ("ACTIVE");
 default:
  return ("INVALID");
 }
}
