
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int arg; int (* release ) (int ) ;int count; } ;
typedef TYPE_1__ ocs_ref_t ;


 int ocs_atomic_sub_return (int *,int) ;
 int stub1 (int ) ;

__attribute__((used)) static inline uint32_t
ocs_ref_put(ocs_ref_t *ref)
{
 uint32_t rc = 0;
 if (ocs_atomic_sub_return(&ref->count, 1) == 1) {
  ref->release(ref->arg);
  rc = 1;
 }
 return rc;
}
