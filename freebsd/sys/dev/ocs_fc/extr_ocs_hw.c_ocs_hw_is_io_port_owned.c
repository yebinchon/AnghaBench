
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ocs_hw_t ;
struct TYPE_3__ {int is_port_owned; } ;
typedef TYPE_1__ ocs_hw_io_t ;



uint8_t
ocs_hw_is_io_port_owned(ocs_hw_t *hw, ocs_hw_io_t *io)
{

 return io->is_port_owned;
}
