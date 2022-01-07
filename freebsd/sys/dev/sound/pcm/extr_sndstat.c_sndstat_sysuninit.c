
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int *) ;
 int * sndstat_dev ;
 int sndstat_lock ;
 int sx_destroy (int *) ;

__attribute__((used)) static void
sndstat_sysuninit(void *p)
{
 if (sndstat_dev != ((void*)0)) {

  destroy_dev(sndstat_dev);
 }
 sx_destroy(&sndstat_lock);
}
