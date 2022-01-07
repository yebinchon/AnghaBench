
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
g_raid_volume_event2str(int event)
{

 switch (event) {
 case 128:
  return ("UP");
 case 131:
  return ("DOWN");
 case 130:
  return ("START");
 case 129:
  return ("STARTMD");
 default:
  return ("INVALID");
 }
}
