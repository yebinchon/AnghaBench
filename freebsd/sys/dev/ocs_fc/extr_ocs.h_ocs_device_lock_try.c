
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ ocs_t ;
typedef int int32_t ;


 int ocs_rlock_try (int *) ;

__attribute__((used)) static inline int32_t
ocs_device_lock_try(ocs_t *ocs)
{
 return ocs_rlock_try(&ocs->lock);
}
