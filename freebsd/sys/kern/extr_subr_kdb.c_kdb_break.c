
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_REQ_DEBUGGER ;
 int KDB_WHY_BREAK ;
 int kdb_break_to_debugger ;
 int kdb_enter (int ,char*) ;

int
kdb_break(void)
{

 if (!kdb_break_to_debugger)
  return (0);
 kdb_enter(KDB_WHY_BREAK, "Break to debugger");
 return (KDB_REQ_DEBUGGER);
}
