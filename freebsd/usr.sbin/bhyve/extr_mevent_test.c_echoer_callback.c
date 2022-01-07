
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esync {int e_mt; int e_cond; } ;
typedef enum ev_type { ____Placeholder_ev_type } ev_type ;


 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
echoer_callback(int fd, enum ev_type type, void *param)
{
 struct esync *sync = param;

 pthread_mutex_lock(&sync->e_mt);
 pthread_cond_signal(&sync->e_cond);
 pthread_mutex_unlock(&sync->e_mt);
}
