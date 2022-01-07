
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct configuration {int rwlock; } ;


 int TRACE_IN (void (*) (struct configuration*)) ;
 int TRACE_OUT (void (*) (struct configuration*)) ;
 int pthread_rwlock_unlock (int *) ;

void
configuration_unlock(struct configuration *config)
{
    TRACE_IN(configuration_unlock);
    pthread_rwlock_unlock(&config->rwlock);
    TRACE_OUT(configuration_unlock);
}
