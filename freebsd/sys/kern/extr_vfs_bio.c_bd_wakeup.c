
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bd_request ;
 int bdlock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

__attribute__((used)) static void
bd_wakeup(void)
{

 mtx_lock(&bdlock);
 if (bd_request == 0) {
  bd_request = 1;
  wakeup(&bd_request);
 }
 mtx_unlock(&bdlock);
}
