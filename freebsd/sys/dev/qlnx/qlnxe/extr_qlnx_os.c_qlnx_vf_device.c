
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ device_id; } ;
typedef TYPE_1__ qlnx_host_t ;


 scalar_t__ QLOGIC_PCI_DEVICE_ID_8090 ;

int
qlnx_vf_device(qlnx_host_t *ha)
{
        uint16_t device_id;

        device_id = ha->device_id;

        if (device_id == QLOGIC_PCI_DEVICE_ID_8090)
                return 0;

        return -1;
}
