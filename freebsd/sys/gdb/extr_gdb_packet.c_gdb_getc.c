
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* gdb_getc ) () ;int gdb_dbfeatures; int (* gdb_term ) () ;} ;


 int CTRL (char) ;
 int GDB_DBGP_FEAT_WANTTERM ;
 TYPE_1__* gdb_cur ;
 scalar_t__ kdb_dbbe_select (char*) ;
 int kdb_reenter () ;
 int printf (char*) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static int
gdb_getc(void)
{
 int c;

 do
  c = gdb_cur->gdb_getc();
 while (c == -1);

 if (c == CTRL('C')) {
  printf("Received ^C; trying to switch back to ddb.\n");

  if (gdb_cur->gdb_dbfeatures & GDB_DBGP_FEAT_WANTTERM)
   gdb_cur->gdb_term();

  if (kdb_dbbe_select("ddb") != 0)
   printf("The ddb backend could not be selected.\n");
  else {
   printf("using longjmp, hope it works!\n");
   kdb_reenter();
  }
 }
 return (c);
}
