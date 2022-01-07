
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int f1 ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 int sleep (int) ;

int
main(void)
{
 pthread_t td;
 int i;

 for (i = 0; i < 1000; ++i) {
  pthread_create(&td, ((void*)0), f1, ((void*)0));
  pthread_join(td, ((void*)0));
 }
 sleep(2);
 for (i = 0; i < 1000; ++i) {
  pthread_create(&td, ((void*)0), f1, ((void*)0));
  pthread_join(td, ((void*)0));
 }
 return (0);
}
