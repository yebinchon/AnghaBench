
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int DRIVER_CONFIG_NAME ;
 int IOV_CONFIG_NAME ;
 int validate_subsystem (int const*,int const*,int ,char const*) ;

__attribute__((used)) static void
validate_device(const nvlist_t *device, const nvlist_t *schema,
    const char *config_name)
{

 validate_subsystem(device, schema, DRIVER_CONFIG_NAME, config_name);
 validate_subsystem(device, schema, IOV_CONFIG_NAME, config_name);
}
