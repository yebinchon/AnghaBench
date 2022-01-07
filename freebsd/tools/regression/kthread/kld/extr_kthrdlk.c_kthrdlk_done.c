
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*) ;
 int EWOULDBLOCK ;
 int QUIT ;
 int global_condvar ;
 int hz ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int) ;
 int panic (char*,scalar_t__) ;
 int test_global_lock ;
 scalar_t__ test_thrcnt ;

__attribute__((used)) static void
kthrdlk_done(void)
{
 int ret;
 DPRINTF(("sending QUIT signal to the thrdlk threads\n"));


 mtx_lock(&test_global_lock);
 QUIT = 1;
 while (test_thrcnt != 0) {
  ret = mtx_sleep(&global_condvar, &test_global_lock, 0, "waiting thrs end", 30 * hz);
  if (ret == EWOULDBLOCK) {
   panic("some threads not die! remaining: %d", test_thrcnt);
   break;
  }
 }
 if (test_thrcnt == 0)
  DPRINTF(("All test_pause threads die\n"));

 mtx_destroy(&test_global_lock);
}
