
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {char* dd_name; char* dd_pnpinfo; char* dd_location; int dd_flags; } ;


 int DF_ENABLED ;
 int DF_SUSPENDED ;
 int printf (char*,...) ;
 scalar_t__ vflag ;

__attribute__((used)) static void
print_dev(struct devinfo_dev *dev)
{

 printf("%s", dev->dd_name[0] ? dev->dd_name : "unknown");
 if (vflag && *dev->dd_pnpinfo)
  printf(" pnpinfo %s", dev->dd_pnpinfo);
 if (vflag && *dev->dd_location)
  printf(" at %s", dev->dd_location);
 if (!(dev->dd_flags & DF_ENABLED))
  printf(" (disabled)");
 else if (dev->dd_flags & DF_SUSPENDED)
  printf(" (suspended)");
}
