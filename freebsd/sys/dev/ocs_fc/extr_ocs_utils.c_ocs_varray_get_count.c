
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int lock; int entry_count; } ;
typedef TYPE_1__ ocs_varray_t ;


 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

uint32_t
ocs_varray_get_count(ocs_varray_t *va)
{
 uint32_t rc;

 ocs_lock(&va->lock);
  rc = va->entry_count;
 ocs_unlock(&va->lock);
 return rc;
}
