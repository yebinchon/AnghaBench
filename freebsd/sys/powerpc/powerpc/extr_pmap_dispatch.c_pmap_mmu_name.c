
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* cls; } ;
struct TYPE_4__ {char const* name; } ;


 TYPE_3__* mmu_obj ;

const char *
pmap_mmu_name(void)
{
 return (mmu_obj->ops->cls->name);
}
