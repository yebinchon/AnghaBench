
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int count; } ;
typedef TYPE_1__ ocs_ref_t ;


 int ocs_atomic_add_return (int *,int) ;
 scalar_t__ ocs_atomic_read (int *) ;

__attribute__((used)) static inline uint32_t
ocs_ref_get_unless_zero(ocs_ref_t *ref)
{
 uint32_t rc = 0;
 rc = ocs_atomic_read(&ref->count);
  if (rc != 0) {
   ocs_atomic_add_return(&ref->count, 1);
  }
 return rc;
}
