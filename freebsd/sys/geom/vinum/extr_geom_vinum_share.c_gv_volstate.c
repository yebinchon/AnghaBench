
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
gv_volstate(int state)
{
 switch (state) {
 case 128:
  return "up";
 case 129:
  return "down";
 default:
  return "??";
 }
}
