
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct TestContext {int dummy; } ;
typedef int pthread_t ;


 void* THRET_FAILURE ;
 void* THRET_SUCCESS ;
 int printf (char*,char*) ;
 int pthread_create (int *,int *,int ,struct TestContext*) ;
 int pthread_join (int ,void**) ;
 char* strerror (int) ;
 int sync_kloop_stop (struct TestContext*) ;
 int sync_kloop_worker ;

__attribute__((used)) static int
sync_kloop_start_stop(struct TestContext *ctx)
{
 pthread_t th;
 void *thret = THRET_FAILURE;
 int ret;

 ret = pthread_create(&th, ((void*)0), sync_kloop_worker, ctx);
 if (ret != 0) {
  printf("pthread_create(kloop): %s\n", strerror(ret));
  return -1;
 }

 ret = sync_kloop_stop(ctx);
 if (ret != 0) {
  return ret;
 }

 ret = pthread_join(th, &thret);
 if (ret != 0) {
  printf("pthread_join(kloop): %s\n", strerror(ret));
 }

 return thret == THRET_SUCCESS ? 0 : -1;
}
