
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gdb_dbfeatures; int (* gdb_term ) () ;} ;


 int GDB_DBGP_FEAT_WANTTERM ;
 TYPE_1__* gdb_cur ;
 scalar_t__ gdb_listening ;
 int gdb_return_to_ddb ;
 int kdb_cpu_clear_singlestep () ;
 scalar_t__ kdb_dbbe_select (char*) ;
 int printf (char*) ;
 int stub1 () ;

__attribute__((used)) static void
gdb_handle_detach(void)
{
 kdb_cpu_clear_singlestep();
 gdb_listening = 0;

 if (gdb_cur->gdb_dbfeatures & GDB_DBGP_FEAT_WANTTERM)
  gdb_cur->gdb_term();
}
