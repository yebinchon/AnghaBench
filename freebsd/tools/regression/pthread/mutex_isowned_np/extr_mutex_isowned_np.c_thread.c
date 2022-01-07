
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_mutex_t ;


 int exit (int) ;
 int printf (char*) ;
 scalar_t__ pthread_mutex_isowned_np (int *) ;

__attribute__((used)) static void *
thread(void *arg)
{
 pthread_mutex_t *mtx = arg;

 if (pthread_mutex_isowned_np(mtx) != 0) {
  printf("pthread_mutex_isowned_np() returned non-zero\n"
      "for a mutex held by another thread\n");
  exit(1);
 }
 return (((void*)0));
}
