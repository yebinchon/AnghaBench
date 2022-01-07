
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wwid; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;
typedef int boolean_t ;



boolean_t pqisrc_device_equal(pqi_scsi_dev_t *dev1,
 pqi_scsi_dev_t *dev2)
{
 return dev1->wwid == dev2->wwid;
}
