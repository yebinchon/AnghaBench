
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netmap_mem_d {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* nmd_delete ) (struct netmap_mem_d*) ;} ;


 int stub1 (struct netmap_mem_d*) ;

__attribute__((used)) static void
netmap_mem_delete(struct netmap_mem_d *nmd)
{
 nmd->ops->nmd_delete(nmd);
}
