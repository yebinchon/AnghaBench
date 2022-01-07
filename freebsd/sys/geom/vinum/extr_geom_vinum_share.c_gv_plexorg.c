
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
gv_plexorg(int org)
{
 switch (org) {
 case 130:
  return "??";
 case 131:
  return "concat";
 case 128:
  return "striped";
 case 129:
  return "raid5";
 default:
  return "??";
 }
}
