
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U8 ;
typedef int SCIF_SAS_REMOTE_DEVICE_T ;


 int SCIF_SAS_CONFIG_ROUTE_TABLE_ALL_PHYS ;

U8 scif_sas_smp_remote_device_get_config_route_table_method(
   SCIF_SAS_REMOTE_DEVICE_T * fw_device
)
{
   U8 config_route_table_method;


   config_route_table_method = SCIF_SAS_CONFIG_ROUTE_TABLE_ALL_PHYS;

   return config_route_table_method;
}
