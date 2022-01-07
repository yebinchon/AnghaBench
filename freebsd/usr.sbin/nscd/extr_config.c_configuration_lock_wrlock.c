
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int rwlock; } ;


 int TRACE_IN (void (*) (struct configuration*)) ;
 int TRACE_OUT (void (*) (struct configuration*)) ;
 int pthread_rwlock_wrlock (int *) ;

void
configuration_lock_wrlock(struct configuration *config)
{
    TRACE_IN(configuration_lock_wrlock);
    pthread_rwlock_wrlock(&config->rwlock);
    TRACE_OUT(configuration_lock_wrlock);
}
