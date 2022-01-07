
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
gv_sdstate(int state)
{
 switch (state) {
 case 131:
  return "initializing";
 case 129:
  return "stale";
 case 132:
  return "down";
 case 130:
  return "reviving";
 case 128:
  return "up";
 default:
  return "??";
 }
}
