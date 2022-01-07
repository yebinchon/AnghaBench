
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KDB_WHY_BREAK ;
 int kdb_alt_break_state (int,int*) ;
 int kdb_alt_break_to_debugger ;
 int kdb_dbbe_select (char*) ;
 int kdb_enter (int ,char*) ;
 int kdb_panic (char*) ;
 int kdb_reboot () ;

__attribute__((used)) static int
kdb_alt_break_internal(int key, int *state, int force_gdb)
{
 int brk;

 if (!kdb_alt_break_to_debugger)
  return (0);
 brk = kdb_alt_break_state(key, state);
 switch (brk) {
 case 130:
  if (force_gdb)
   kdb_dbbe_select("gdb");
  kdb_enter(KDB_WHY_BREAK, "Break to debugger");
  break;

 case 129:
  if (force_gdb)
   kdb_dbbe_select("gdb");
  kdb_panic("Panic sequence on console");
  break;

 case 128:
  kdb_reboot();
  break;
 }
 return (0);
}
