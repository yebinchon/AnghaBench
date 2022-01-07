
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* qla_unlock; int hw_lock; scalar_t__ hw_lock_held; } ;
typedef TYPE_1__ qla_host_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static __inline void
qla_unlock(qla_host_t *ha, const char *str)
{
 mtx_lock(&ha->hw_lock);
 ha->hw_lock_held = 0;
 ha->qla_unlock = str;
 mtx_unlock(&ha->hw_lock);




 return;
}
