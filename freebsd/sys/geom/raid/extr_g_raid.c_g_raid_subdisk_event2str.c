
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
g_raid_subdisk_event2str(int event)
{

 switch (event) {
 case 128:
  return ("NEW");
 case 129:
  return ("FAILED");
 case 130:
  return ("DISCONNECTED");
 default:
  return ("INVALID");
 }
}
