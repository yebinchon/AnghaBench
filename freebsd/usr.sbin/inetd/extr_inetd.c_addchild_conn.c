
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procinfo {struct conninfo* pr_conn; } ;
struct conninfo {int co_numchild; struct procinfo** co_proc; } ;
typedef int pid_t ;


 int EX_OSERR ;
 int LOG_ERR ;
 int exit (int ) ;
 struct procinfo* search_proc (int ,int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
addchild_conn(struct conninfo *conn, pid_t pid)
{
 struct procinfo *proc;

 if (conn == ((void*)0))
  return;

 if ((proc = search_proc(pid, 1)) != ((void*)0)) {
  if (proc->pr_conn != ((void*)0)) {
   syslog(LOG_ERR,
       "addchild_conn: child already on process list");
   exit(EX_OSERR);
  }
  proc->pr_conn = conn;
 }

 conn->co_proc[conn->co_numchild++] = proc;
}
