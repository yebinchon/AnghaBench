
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int semmni; } ;


 int EBUSY ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int M_SEM ;
 int free (int *,int ) ;
 int mac_sysvsem_destroy (int *) ;
 int mtx_destroy (int *) ;
 int osd_jail_deregister (scalar_t__) ;
 int process_exit ;
 int * sem ;
 int sem32_syscalls ;
 int sem_mtx ;
 scalar_t__ sem_prison_slot ;
 int sem_syscalls ;
 int sem_undo_mtx ;
 int * sema ;
 int * sema_mtx ;
 int semexit_tag ;
 TYPE_1__ seminfo ;
 scalar_t__ semtot ;
 int * semu ;
 int syscall32_helper_unregister (int ) ;
 int syscall_helper_unregister (int ) ;

__attribute__((used)) static int
semunload(void)
{
 int i;


 if (semtot != 0)
  return (EBUSY);




 syscall_helper_unregister(sem_syscalls);
 EVENTHANDLER_DEREGISTER(process_exit, semexit_tag);
 if (sem_prison_slot != 0)
  osd_jail_deregister(sem_prison_slot);




 free(sem, M_SEM);
 free(sema, M_SEM);
 free(semu, M_SEM);
 for (i = 0; i < seminfo.semmni; i++)
  mtx_destroy(&sema_mtx[i]);
 free(sema_mtx, M_SEM);
 mtx_destroy(&sem_mtx);
 mtx_destroy(&sem_undo_mtx);
 return (0);
}
