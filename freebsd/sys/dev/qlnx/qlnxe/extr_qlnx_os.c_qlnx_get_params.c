
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pci_dev; } ;
typedef TYPE_1__ qlnx_host_t ;


 scalar_t__ QLNX_MAX_RSS ;
 int device_printf (int ,char*,scalar_t__) ;
 scalar_t__ qlnxe_queue_count ;

__attribute__((used)) static void
qlnx_get_params(qlnx_host_t *ha)
{
 if ((qlnxe_queue_count < 0) || (qlnxe_queue_count > QLNX_MAX_RSS)) {
  device_printf(ha->pci_dev, "invalid queue_count value (%d)\n",
   qlnxe_queue_count);
  qlnxe_queue_count = 0;
 }
 return;
}
