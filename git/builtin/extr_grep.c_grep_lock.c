
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int grep_mutex ;
 int pthread_mutex_lock (int *) ;

__attribute__((used)) static inline void grep_lock(void)
{
 pthread_mutex_lock(&grep_mutex);
}
