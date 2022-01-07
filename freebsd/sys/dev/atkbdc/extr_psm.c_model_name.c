
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
model_name(int model)
{
 static struct {
  int model_code;
  char *model_name;
 } models[] = {
  { 133, "NetScroll" },
  { 134, "NetMouse/NetScroll Optical" },
  { 137, "GlidePoint" },
  { 131, "ThinkingMouse" },
  { 136, "IntelliMouse" },
  { 135, "MouseMan+" },
  { 128, "VersaPad" },
  { 139, "IntelliMouse Explorer" },
  { 142, "4D Mouse" },
  { 141, "4D+ Mouse" },
  { 132, "Synaptics Touchpad" },
  { 130, "IBM/Lenovo TrackPoint" },
  { 140, "Elantech Touchpad" },
  { 138, "Generic PS/2 mouse" },
  { 129, "Unknown" },
 };
 int i;

 for (i = 0; models[i].model_code != 129; ++i)
  if (models[i].model_code == model)
   break;
 return (models[i].model_name);
}
