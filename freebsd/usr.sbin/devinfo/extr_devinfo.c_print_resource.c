
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_rman {int dm_size; } ;
struct devinfo_res {int dr_start; int dr_size; int dr_rman; } ;


 struct devinfo_rman* devinfo_handle_to_rman (int ) ;
 int printf (char*,int) ;

void
print_resource(struct devinfo_res *res)
{
 struct devinfo_rman *rman;
 int hexmode;

 rman = devinfo_handle_to_rman(res->dr_rman);
 hexmode = (rman->dm_size > 1000) || (rman->dm_size == 0);
 printf(hexmode ? "0x%jx" : "%ju", res->dr_start);
 if (res->dr_size > 1)
  printf(hexmode ? "-0x%jx" : "-%ju",
      res->dr_start + res->dr_size - 1);
}
