
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_tx_char (char) ;
 int gdb_txbuf ;
 int gdb_txp ;

void
gdb_tx_begin(char tp)
{

 gdb_txp = gdb_txbuf;
 if (tp != '\0')
  gdb_tx_char(tp);
}
