
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugnet_free (int *) ;
 int gdb_cur ;
 int * netgdb_conn ;
 int netgdb_prev_dbgport ;
 int* netgdb_prev_kdb_inactive ;
 int netgdb_rxsb ;
 int sbuf_delete (int *) ;

__attribute__((used)) static void
netgdb_fini(void)
{


 if (netgdb_conn != ((void*)0)) {
  debugnet_free(netgdb_conn);
  netgdb_conn = ((void*)0);
 }

 sbuf_delete(&netgdb_rxsb);

 gdb_cur = netgdb_prev_dbgport;

 if (netgdb_prev_kdb_inactive != ((void*)0)) {
  *netgdb_prev_kdb_inactive = -1;
  netgdb_prev_kdb_inactive = ((void*)0);
 }
}
