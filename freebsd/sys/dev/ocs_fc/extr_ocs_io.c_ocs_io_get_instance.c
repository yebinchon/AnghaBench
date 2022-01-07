
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_3__* io_pool; } ;
typedef TYPE_1__ ocs_xport_t ;
struct TYPE_6__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
typedef int ocs_io_t ;
struct TYPE_7__ {int pool; } ;
typedef TYPE_3__ ocs_io_pool_t ;


 int * ocs_pool_get_instance (int ,int ) ;

ocs_io_t *
ocs_io_get_instance(ocs_t *ocs, uint32_t index)
{
 ocs_xport_t *xport = ocs->xport;
 ocs_io_pool_t *io_pool = xport->io_pool;
 return ocs_pool_get_instance(io_pool->pool, index);
}
