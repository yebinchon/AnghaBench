
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_tx_char (char const) ;

__attribute__((used)) static void
gdb_tx_puthex(int c)
{
 const char *hex = "0123456789abcdef";

 gdb_tx_char(hex[(c>>4)&0xf]);
 gdb_tx_char(hex[(c>>0)&0xf]);
}
