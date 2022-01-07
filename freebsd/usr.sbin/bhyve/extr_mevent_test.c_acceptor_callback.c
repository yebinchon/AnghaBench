
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int accept_condvar ;
 int accept_mutex ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
acceptor_callback(int fd, enum ev_type type, void *param)
{
 pthread_mutex_lock(&accept_mutex);
 pthread_cond_signal(&accept_condvar);
 pthread_mutex_unlock(&accept_mutex);
}
