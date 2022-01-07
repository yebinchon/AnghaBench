
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct rusage {int dummy; } ;
struct __wrusage {struct rusage wru_self; } ;
typedef scalar_t__ pid_t ;
typedef int idtype_t ;
typedef scalar_t__ id_t ;


 int P_ALL ;
 int P_PGID ;
 int P_PID ;
 scalar_t__ WAIT_ANY ;
 int WEXITED ;
 int WTRAPPED ;
 int kern_wait6 (struct thread*,int ,scalar_t__,int*,int,struct __wrusage*,int *) ;

int
kern_wait(struct thread *td, pid_t pid, int *status, int options,
    struct rusage *rusage)
{
 struct __wrusage wru, *wrup;
 idtype_t idtype;
 id_t id;
 int ret;






 if (pid == WAIT_ANY) {
  idtype = P_ALL;
  id = 0;
 } else if (pid < 0) {
  idtype = P_PGID;
  id = (id_t)-pid;
 } else {
  idtype = P_PID;
  id = (id_t)pid;
 }

 if (rusage != ((void*)0))
  wrup = &wru;
 else
  wrup = ((void*)0);





 options |= WEXITED | WTRAPPED;
 ret = kern_wait6(td, idtype, id, status, options, wrup, ((void*)0));
 if (rusage != ((void*)0))
  *rusage = wru.wru_self;
 return (ret);
}
