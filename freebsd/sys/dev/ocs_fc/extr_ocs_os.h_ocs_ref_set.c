
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ ocs_ref_t ;


 int ocs_atomic_set (int *,int) ;

__attribute__((used)) static inline void
ocs_ref_set(ocs_ref_t *ref, int i)
{
 ocs_atomic_set(&ref->count, i);
}
