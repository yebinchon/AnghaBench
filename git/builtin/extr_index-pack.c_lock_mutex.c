
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int pthread_mutex_lock (int *) ;
 scalar_t__ threads_active ;

__attribute__((used)) static inline void lock_mutex(pthread_mutex_t *mutex)
{
 if (threads_active)
  pthread_mutex_lock(mutex);
}
