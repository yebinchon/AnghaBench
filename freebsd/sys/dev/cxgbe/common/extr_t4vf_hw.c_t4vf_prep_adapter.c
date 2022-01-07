
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cclk; } ;
struct TYPE_4__ {int pmask; } ;
struct TYPE_6__ {int chipid; int fpga; int nports; TYPE_2__ vpd; TYPE_1__ vfres; } ;
struct adapter {int * chip_params; TYPE_3__ params; int dev; } ;


 int EINVAL ;
 int chip_id (struct adapter*) ;
 int pci_get_device (int ) ;
 int * t4_get_chip_params (int ) ;
 int t4vf_wait_dev_ready (struct adapter*) ;

int t4vf_prep_adapter(struct adapter *adapter)
{
 int err;




 err = t4vf_wait_dev_ready(adapter);
 if (err)
  return err;

 adapter->params.chipid = pci_get_device(adapter->dev) >> 12;
 if (adapter->params.chipid >= 0xa) {
  adapter->params.chipid -= (0xa - 0x4);
  adapter->params.fpga = 1;
 }





 adapter->params.nports = 1;
 adapter->params.vfres.pmask = 1;
 adapter->params.vpd.cclk = 50000;

 adapter->chip_params = t4_get_chip_params(chip_id(adapter));
 if (adapter->chip_params == ((void*)0))
  return -EINVAL;

 return 0;
}
