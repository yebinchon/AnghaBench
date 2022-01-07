
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;
struct nmreq_opt_csb {int dummy; } ;
struct TestContext {int * sem; } ;
typedef int sem_t ;
typedef int pthread_t ;


 int CLOCK_REALTIME ;
 void* THRET_FAILURE ;
 void* THRET_SUCCESS ;
 int clear_options (struct TestContext*) ;
 int clock_gettime (int ,struct timespec*) ;
 int errno ;
 int port_register_hwall (struct TestContext*) ;
 int printf (char*,char*,...) ;
 int pthread_create (int *,int *,int ,struct TestContext*) ;
 int pthread_join (int ,void**) ;
 int push_csb_option (struct TestContext*,struct nmreq_opt_csb*) ;
 int sem_destroy (int *) ;
 int sem_init (int *,int ,int ) ;
 int sem_timedwait (int *,struct timespec*) ;
 char* strerror (int) ;
 int sync_kloop_stop (struct TestContext*) ;
 int sync_kloop_worker ;

__attribute__((used)) static int
sync_kloop_conflict(struct TestContext *ctx)
{
 struct nmreq_opt_csb opt;
 pthread_t th1, th2;
 void *thret1 = THRET_FAILURE, *thret2 = THRET_FAILURE;
 struct timespec to;
 sem_t sem;
 int err = 0;
 int ret;

 ret = push_csb_option(ctx, &opt);
 if (ret != 0) {
  return ret;
 }

 ret = port_register_hwall(ctx);
 if (ret != 0) {
  return ret;
 }
 clear_options(ctx);

 ret = sem_init(&sem, 0, 0);
 if (ret != 0) {
  printf("sem_init() failed: %s\n", strerror(ret));
  return ret;
 }
 ctx->sem = &sem;

 ret = pthread_create(&th1, ((void*)0), sync_kloop_worker, ctx);
 err |= ret;
 if (ret != 0) {
  printf("pthread_create(kloop1): %s\n", strerror(ret));
 }

 ret = pthread_create(&th2, ((void*)0), sync_kloop_worker, ctx);
 err |= ret;
 if (ret != 0) {
  printf("pthread_create(kloop2): %s\n", strerror(ret));
 }




 clock_gettime(CLOCK_REALTIME, &to);
 to.tv_sec += 2;
 ret = sem_timedwait(&sem, &to);
 err |= ret;
 if (ret != 0) {
  printf("sem_timedwait() failed: %s\n", strerror(errno));
 }

 err |= sync_kloop_stop(ctx);

 ret = pthread_join(th1, &thret1);
 err |= ret;
 if (ret != 0) {
  printf("pthread_join(kloop1): %s\n", strerror(ret));
 }

 ret = pthread_join(th2, &thret2);
 err |= ret;
 if (ret != 0) {
  printf("pthread_join(kloop2): %s %d\n", strerror(ret), ret);
 }

 sem_destroy(&sem);
 ctx->sem = ((void*)0);
 if (err) {
  return err;
 }


 return ((thret1 == THRET_SUCCESS && thret2 == THRET_FAILURE) ||
   (thret1 == THRET_FAILURE && thret2 == THRET_SUCCESS))
                ? 0
                : -1;
}
