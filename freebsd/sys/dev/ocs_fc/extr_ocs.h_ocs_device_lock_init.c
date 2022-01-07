
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ ocs_t ;


 int ocs_rlock_init (TYPE_1__*,int *,char*) ;

__attribute__((used)) static inline void
ocs_device_lock_init(ocs_t *ocs)
{
 ocs_rlock_init(ocs, &ocs->lock, "ocsdevicelock");
}
