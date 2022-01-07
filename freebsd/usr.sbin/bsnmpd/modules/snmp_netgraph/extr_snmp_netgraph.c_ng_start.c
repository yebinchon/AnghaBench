
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 scalar_t__ NgMkSockNode (int ,int *,int *) ;
 int csock ;
 int * csock_fd ;
 int csock_input ;
 int dsock ;
 int * dsock_fd ;
 int dsock_input ;
 int exit (int) ;
 void* fd_select (int ,int ,int *,int ) ;
 int module ;
 scalar_t__ ng_node_id (char*) ;
 int oid_begemotNg ;
 int or_register (int *,char*,int ) ;
 int reg_index ;
 scalar_t__ snmp_node ;
 int snmp_nodename ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
ng_start(void)
{
 if (snmp_node == 0) {
  if (NgMkSockNode(snmp_nodename, &csock, &dsock) < 0) {
   syslog(LOG_ERR, "NgMkSockNode: %m");
   exit(1);
  }
  snmp_node = ng_node_id(".:");
 }

 if ((csock_fd = fd_select(csock, csock_input, ((void*)0), module)) == ((void*)0)) {
  syslog(LOG_ERR, "fd_select failed on csock: %m");
  return;
 }
 if ((dsock_fd = fd_select(dsock, dsock_input, ((void*)0), module)) == ((void*)0)) {
  syslog(LOG_ERR, "fd_select failed on dsock: %m");
  return;
 }

 reg_index = or_register(&oid_begemotNg,
     "The MIB for the NetGraph access module for SNMP.", module);
}
