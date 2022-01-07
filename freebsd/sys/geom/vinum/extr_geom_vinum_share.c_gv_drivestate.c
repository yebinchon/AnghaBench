
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
gv_drivestate(int state)
{
 switch (state) {
 case 129:
  return "down";
 case 128:
  return "up";
 default:
  return "??";
 }
}
