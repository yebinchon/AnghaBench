
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum fd_drivetype { ____Placeholder_fd_drivetype } fd_drivetype ;
void
getname(enum fd_drivetype t, const char **name, const char **descr)
{

 switch (t) {
 default:
  *name = "unknown";
  *descr = "unknown drive type";
  break;

 case 129:
  *name = "360K";
  *descr = "5.25\" double-density";
  break;

 case 132:
  *name = "1.2M";
  *descr = "5.25\" high-density";
  break;

 case 128:
  *name = "720K";
  *descr = "3.5\" double-density";
  break;

 case 131:
  *name = "1.44M";
  *descr = "3.5\" high-density";
  break;

 case 130:
  *name = "2.88M";
  *descr = "3.5\" extra-density";
  break;
 }
}
