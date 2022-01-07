
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int IOV_CONFIG_NAME ;
 int apply_subsystem_defaults (int *,int ,int const*) ;

__attribute__((used)) static void
apply_defaults(nvlist_t *vf, const nvlist_t *defaults)
{

 apply_subsystem_defaults(vf, DRIVER_CONFIG_NAME, defaults);
 apply_subsystem_defaults(vf, IOV_CONFIG_NAME, defaults);
}
