
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procinfo {struct conninfo* pr_conn; } ;
struct conninfo {int co_numchild; struct procinfo** co_proc; } ;
typedef int pid_t ;


 int free_conn (struct conninfo*) ;
 int free_proc (struct procinfo*) ;
 struct procinfo* search_proc (int ,int ) ;

__attribute__((used)) static void
reapchild_conn(pid_t pid)
{
 struct procinfo *proc;
 struct conninfo *conn;
 int i;

 if ((proc = search_proc(pid, 0)) == ((void*)0))
  return;
 if ((conn = proc->pr_conn) == ((void*)0))
  return;
 for (i = 0; i < conn->co_numchild; ++i)
  if (conn->co_proc[i] == proc) {
   conn->co_proc[i] = conn->co_proc[--conn->co_numchild];
   break;
  }
 free_proc(proc);
 free_conn(conn);
}
