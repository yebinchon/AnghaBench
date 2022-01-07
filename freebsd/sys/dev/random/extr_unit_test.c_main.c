
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thrd_t ;
struct TYPE_2__ {int (* ra_deinit_alg ) (int *) ;int (* ra_init_alg ) (int *) ;} ;


 int NUM_THREADS ;
 int ReadCSPRNG ;
 int RunHarvester ;
 int exit (int) ;
 int printf (char*,int) ;
 TYPE_1__ random_alg_context ;
 int stopseeding ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int thrd_create (int *,int ,int *) ;
 int thrd_exit (int ) ;
 int thrd_join (int ,int*) ;
 int thrd_success ;

int
main(int argc, char *argv[])
{
 thrd_t threads[NUM_THREADS];
 int rc;
 long t;

 random_alg_context.ra_init_alg(((void*)0));

 for (t = 0; t < NUM_THREADS; t++) {
  printf("In main: creating thread %ld\n", t);
  rc = thrd_create(&threads[t], (t == 0 ? RunHarvester : ReadCSPRNG), ((void*)0));
  if (rc != thrd_success) {
   printf("ERROR; return code from thrd_create() is %d\n", rc);
   exit(-1);
  }
 }

 for (t = 2; t < NUM_THREADS; t++)
  thrd_join(threads[t], &rc);

 stopseeding = 1;

 thrd_join(threads[1], &rc);
 thrd_join(threads[0], &rc);

 random_alg_context.ra_deinit_alg(((void*)0));


 thrd_exit(0);

 return (0);
}
