
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef int pthread_mutex_t ;


 int exit (int) ;
 int printf (char*) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_isowned_np (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int thread ;

int
main(int argc, char *argv[])
{
 pthread_t thr;
 pthread_mutex_t mtx;

 pthread_mutex_init(&mtx, ((void*)0));
 if (pthread_mutex_isowned_np(&mtx) != 0) {
  printf("pthread_mutex_isowned_np() returned non-zero\n"
      "for a mutex that is not held\n");
  exit(1);
 }
 pthread_mutex_lock(&mtx);
 if (pthread_mutex_isowned_np(&mtx) == 0) {
  printf("pthread_mutex_isowned_np() returned zero\n"
      "for a mutex we hold ourselves\n");
  exit(1);
 }
 pthread_create(&thr, ((void*)0), thread, &mtx);
 pthread_join(thr, ((void*)0));
 pthread_mutex_unlock(&mtx);
 if (pthread_mutex_isowned_np(&mtx) != 0) {
  printf("pthread_mutex_isowned_np() returned non-zero\n"
      "for a mutex that is not held\n");
  exit(1);
 }

 printf("OK\n");
 exit(0);
}
