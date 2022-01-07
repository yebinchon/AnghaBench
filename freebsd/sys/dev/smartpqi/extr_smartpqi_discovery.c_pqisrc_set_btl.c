
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bus; int target; int lun; } ;
typedef TYPE_1__ pqi_scsi_dev_t ;


 int DBG_FUNC (char*) ;

__attribute__((used)) static inline void pqisrc_set_btl(pqi_scsi_dev_t *device,
 int bus, int target, int lun)
{
 DBG_FUNC("IN\n");

 device->bus = bus;
 device->target = target;
 device->lun = lun;

 DBG_FUNC("OUT\n");
}
