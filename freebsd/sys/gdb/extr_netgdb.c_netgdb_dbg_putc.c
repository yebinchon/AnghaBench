
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int netgdb_dbg_sendpacket (char*,int) ;

__attribute__((used)) static void
netgdb_dbg_putc(int i)
{
 char c;

 c = i;
 netgdb_dbg_sendpacket(&c, 1);

}
