
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
g_raid3_device_state2str(int state)
{

 switch (state) {
 case 128:
  return ("STARTING");
 case 129:
  return ("DEGRADED");
 case 130:
  return ("COMPLETE");
 default:
  return ("INVALID");
 }
}
