
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ ocs_varray_t ;


 int ocs_lock (int *) ;

void
ocs_varray_lock(ocs_varray_t *va)
{
 ocs_lock(&va->lock);
}
