
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;


 int LOG_INFO ;
 int tprintf (struct proc*,int ,char*,char const*,char const*,...) ;

__attribute__((used)) static int
nlm_msg(struct thread *td, const char *server, const char *msg, int error)
{
 struct proc *p;

 p = td ? td->td_proc : ((void*)0);
 if (error) {
  tprintf(p, LOG_INFO, "nfs server %s: %s, error %d\n", server,
      msg, error);
 } else {
  tprintf(p, LOG_INFO, "nfs server %s: %s\n", server, msg);
 }
 return (0);
}
