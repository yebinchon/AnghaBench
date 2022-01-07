
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {char* td_name; int td_tid; } ;
struct td_sched {char* ts_name; } ;


 int snprintf (char*,int,char*,char*,int) ;
 struct td_sched* td_get_sched (struct thread*) ;

char *
sched_tdname(struct thread *td)
{
 return (td->td_name);

}
