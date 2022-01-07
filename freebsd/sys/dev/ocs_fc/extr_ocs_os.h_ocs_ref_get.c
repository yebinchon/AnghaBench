
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ ocs_ref_t ;


 int ocs_atomic_add_return (int *,int) ;

__attribute__((used)) static inline void
ocs_ref_get(ocs_ref_t *ref)
{
 ocs_atomic_add_return(&ref->count, 1);
}
