
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_rlock_release (int *) ;

__attribute__((used)) static inline void
ocs_device_unlock(ocs_t *ocs)
{
 ocs_rlock_release(&ocs->lock);
}
