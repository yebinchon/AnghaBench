
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int io_num_ios; } ;
typedef TYPE_1__ ocs_io_pool_t ;



uint32_t ocs_io_pool_allocated(ocs_io_pool_t *io_pool)
{
 return io_pool->io_num_ios;
}
