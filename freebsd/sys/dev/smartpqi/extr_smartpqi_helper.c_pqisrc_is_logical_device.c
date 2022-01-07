
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_physical_device; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;
typedef int boolean_t ;



boolean_t pqisrc_is_logical_device(pqi_scsi_dev_t *device)
{
 return !device->is_physical_device;
}
