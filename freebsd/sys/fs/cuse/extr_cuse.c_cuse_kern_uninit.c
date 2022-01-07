
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* TAILQ_FIRST (int *) ;
 int * cuse_dev ;
 int cuse_lock () ;
 int cuse_mtx ;
 int cuse_server_head ;
 int cuse_unlock () ;
 int destroy_dev (int *) ;
 int hz ;
 int mtx_destroy (int *) ;
 int pause (char*,int) ;
 int printf (char*) ;

__attribute__((used)) static void
cuse_kern_uninit(void *arg)
{
 void *ptr;

 while (1) {

  printf("Cuse: Please exit all /dev/cuse instances "
      "and processes which have used this device.\n");

  pause("DRAIN", 2 * hz);

  cuse_lock();
  ptr = TAILQ_FIRST(&cuse_server_head);
  cuse_unlock();

  if (ptr == ((void*)0))
   break;
 }

 if (cuse_dev != ((void*)0))
  destroy_dev(cuse_dev);

 mtx_destroy(&cuse_mtx);
}
