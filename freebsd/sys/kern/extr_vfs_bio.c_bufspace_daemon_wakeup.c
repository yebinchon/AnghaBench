
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {int bd_running; } ;


 int BD_RUN_LOCK (struct bufdomain*) ;
 int BD_RUN_UNLOCK (struct bufdomain*) ;
 scalar_t__ atomic_fetchadd_int (int *,int) ;
 int atomic_store_int (int *,int) ;
 int wakeup (int *) ;

__attribute__((used)) static void
bufspace_daemon_wakeup(struct bufdomain *bd)
{




 if (atomic_fetchadd_int(&bd->bd_running, 1) == 0) {
  BD_RUN_LOCK(bd);
  atomic_store_int(&bd->bd_running, 1);
  wakeup(&bd->bd_running);
  BD_RUN_UNLOCK(bd);
 }
}
