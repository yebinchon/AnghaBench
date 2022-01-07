
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigio {int sio_pgid; } ;
typedef int pid_t ;


 int SIGIO_LOCK () ;
 int SIGIO_UNLOCK () ;

pid_t
fgetown(struct sigio **sigiop)
{
 pid_t pgid;

 SIGIO_LOCK();
 pgid = (*sigiop != ((void*)0)) ? (*sigiop)->sio_pgid : 0;
 SIGIO_UNLOCK();
 return (pgid);
}
