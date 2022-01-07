
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * compat32_svtk ;
 int * host_svtk ;
 int timehands_update (int *) ;
 int timehands_update32 (int *) ;

void
timekeep_push_vdso(void)
{

 if (host_svtk != ((void*)0))
  timehands_update(host_svtk);




}
