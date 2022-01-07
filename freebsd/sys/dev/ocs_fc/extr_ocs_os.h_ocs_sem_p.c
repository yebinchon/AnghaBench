
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_3__ {int sem; } ;
typedef TYPE_1__ ocs_sem_t ;
typedef int int32_t ;


 int sema_timedwait (int *,scalar_t__) ;
 int sema_trywait (int *) ;
 int sema_wait (int *) ;
 scalar_t__ tvtohz (struct timeval*) ;

__attribute__((used)) static inline int
ocs_sem_p(ocs_sem_t *sem, int timeout_usec)
{
 int32_t rc = 0;

 if (timeout_usec == 0) {
  rc = sema_trywait(&sem->sem);
  if (rc == 0) {
   rc = -1;
  }
 } else if (timeout_usec > 0) {
  struct timeval tv;
  uint32_t ticks;

  tv.tv_sec = timeout_usec / 1000000;
  tv.tv_usec = timeout_usec % 1000000;
  ticks = tvtohz(&tv);
  if (ticks == 0) {
   ticks ++;
  }
  rc = sema_timedwait(&sem->sem, ticks);
  if (rc != 0) {
   rc = -1;
  }
 } else {
  sema_wait(&sem->sem);
 }
 if (rc)
  rc = -1;

 return rc;
}
