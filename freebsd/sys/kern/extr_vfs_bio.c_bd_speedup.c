
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bd_request ;
 int bd_speedupreq ;
 int bdlock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int*) ;

void
bd_speedup(void)
{
 int needwake;

 mtx_lock(&bdlock);
 needwake = 0;
 if (bd_speedupreq == 0 || bd_request == 0)
  needwake = 1;
 bd_speedupreq = 1;
 bd_request = 1;
 if (needwake)
  wakeup(&bd_request);
 mtx_unlock(&bdlock);
}
