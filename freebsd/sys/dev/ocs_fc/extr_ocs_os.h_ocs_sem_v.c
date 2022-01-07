
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem; } ;
typedef TYPE_1__ ocs_sem_t ;


 int sema_post (int *) ;

__attribute__((used)) static inline void
ocs_sem_v(ocs_sem_t *sem)
{
 sema_post(&sem->sem);
}
