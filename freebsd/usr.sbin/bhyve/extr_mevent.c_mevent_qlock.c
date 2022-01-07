
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mevent_lmutex ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static void
mevent_qlock(void)
{
 pthread_mutex_lock(&mevent_lmutex);
}
