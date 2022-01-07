
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_qXfer_threads_read () ;
 int gdb_rx_equal (char*) ;
 int gdb_tx_empty () ;

__attribute__((used)) static void
do_qXfer(void)
{
 if (!gdb_rx_equal("threads:"))
  goto unrecognized;

 if (!gdb_rx_equal("read:"))
  goto unrecognized;

 do_qXfer_threads_read();
 return;

unrecognized:
 gdb_tx_empty();
 return;
}
