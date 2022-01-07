
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ocs_t ;
typedef int ocs_sem_t ;


 int ocs_assert (int *) ;
 int ocs_sem_v (int *) ;

__attribute__((used)) static void
ocs_xport_domain_list_empty_cb(ocs_t *ocs, void *arg)
{
 ocs_sem_t *sem = arg;

 ocs_assert(ocs);
 ocs_assert(sem);

 ocs_sem_v(sem);
}
