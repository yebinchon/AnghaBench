
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* gdb_getc ) () ;} ;
struct TYPE_5__ {int* s_buf; } ;


 int CTRL (char) ;
 int debugnet_network_poll (int ) ;
 int netgdb_conn ;
 int netgdb_fini () ;
 TYPE_4__* netgdb_prev_dbgport ;
 size_t netgdb_rx_off ;
 TYPE_1__ netgdb_rxsb ;
 int sbuf_clear (TYPE_1__*) ;
 size_t sbuf_len (TYPE_1__*) ;
 int stub1 () ;

__attribute__((used)) static int
netgdb_dbg_getc(void)
{
 int c;

 while (1) {

  if (netgdb_rx_off < sbuf_len(&netgdb_rxsb)) {
   c = netgdb_rxsb.s_buf[netgdb_rx_off];
   netgdb_rx_off++;
   break;
  }


  sbuf_clear(&netgdb_rxsb);
  netgdb_rx_off = 0;


  if (netgdb_prev_dbgport != ((void*)0)) {
   c = netgdb_prev_dbgport->gdb_getc();
   if (c == CTRL('C'))
    break;
  }

  debugnet_network_poll(netgdb_conn);
 }

 if (c == CTRL('C')) {
  netgdb_fini();

 }
 return (c);
}
