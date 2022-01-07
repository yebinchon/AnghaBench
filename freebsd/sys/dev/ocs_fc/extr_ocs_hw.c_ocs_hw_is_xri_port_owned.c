
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int ocs_hw_t ;
struct TYPE_3__ {int is_port_owned; } ;
typedef TYPE_1__ ocs_hw_io_t ;


 int FALSE ;
 TYPE_1__* ocs_hw_io_lookup (int *,int ) ;

uint8_t
ocs_hw_is_xri_port_owned(ocs_hw_t *hw, uint32_t xri)
{
 ocs_hw_io_t *io = ocs_hw_io_lookup(hw, xri);
 return (io == ((void*)0) ? FALSE : io->is_port_owned);
}
