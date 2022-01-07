
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* xport; } ;
typedef TYPE_2__ ocs_t ;
typedef int ocs_io_t ;
struct TYPE_4__ {int io_pool; } ;


 int * ocs_io_pool_io_alloc (int ) ;

__attribute__((used)) static inline ocs_io_t *
ocs_io_alloc(ocs_t *ocs)
{
 return ocs_io_pool_io_alloc(ocs->xport->io_pool);
}
