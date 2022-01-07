
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct central_devinfo {int cdi_rl; } ;


 int SYS_RES_MEMORY ;
 int resource_list_print_type (int *,char*,int ,char*) ;

__attribute__((used)) static int
central_print_res(struct central_devinfo *cdi)
{

 return (resource_list_print_type(&cdi->cdi_rl, "mem", SYS_RES_MEMORY,
     "%#jx"));
}
