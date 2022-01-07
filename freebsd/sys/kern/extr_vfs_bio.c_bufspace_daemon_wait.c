
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bufdomain {scalar_t__ bd_bufspace; scalar_t__ bd_bufspacethresh; scalar_t__ bd_freebuffers; scalar_t__ bd_lofreebuffers; int bd_running; } ;


 int BD_RUN_LOCK (struct bufdomain*) ;
 int BD_RUN_LOCKPTR (struct bufdomain*) ;
 int BD_RUN_UNLOCK (struct bufdomain*) ;
 int PDROP ;
 int PRIBIO ;
 int atomic_store_int (int *,int) ;
 int hz ;
 int msleep (int *,int ,int,char*,int ) ;

__attribute__((used)) static void
bufspace_daemon_wait(struct bufdomain *bd)
{






 BD_RUN_LOCK(bd);
 atomic_store_int(&bd->bd_running, 0);
 if (bd->bd_bufspace < bd->bd_bufspacethresh &&
     bd->bd_freebuffers > bd->bd_lofreebuffers) {
  msleep(&bd->bd_running, BD_RUN_LOCKPTR(bd), PRIBIO|PDROP,
      "-", hz);
 } else {

  atomic_store_int(&bd->bd_running, 1);
  BD_RUN_UNLOCK(bd);
 }
}
