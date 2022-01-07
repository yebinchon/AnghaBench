
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbcons {int npending; int * buf; } ;


 int gdb_tx_begin (char) ;
 int gdb_tx_end () ;
 int gdb_tx_puthex (int ) ;

__attribute__((used)) static void
gdb_cnflush(void *arg)
{
 struct gdbcons *gc = arg;
 int i;

 gdb_tx_begin('O');
 for (i = 0; i < gc->npending; i++)
  gdb_tx_puthex(gc->buf[i]);
 gdb_tx_end();
 gc->npending = 0;
}
