
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
gv_plexstate(int state)
{
 switch (state) {
 case 131:
  return "down";
 case 129:
  return "initializing";
 case 132:
  return "degraded";
 case 130:
  return "growable";
 case 128:
  return "up";
 default:
  return "??";
 }
}
