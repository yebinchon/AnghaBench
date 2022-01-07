
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dumperinfo {scalar_t__ dumpoff; } ;
struct debugnet_pcb {int dummy; } ;
struct debugnet_conn_params {scalar_t__ dc_server; scalar_t__* dc_herald_data; scalar_t__ dc_herald_datalen; int dc_client_port; int dc_herald_port; int dc_gateway; int dc_client; int dc_ifp; } ;
typedef int dcp ;
struct TYPE_9__ {int s_addr; } ;
struct TYPE_8__ {struct debugnet_pcb* nd_pcb; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;


 int EINVAL ;
 scalar_t__ INADDR_ANY ;
 int INET_ADDRSTRLEN ;
 int NETDUMP_ACKPORT ;
 int NETDUMP_PORT ;
 int debugnet_connect (struct debugnet_conn_params*,struct debugnet_pcb**) ;
 int debugnet_get_gw_mac (struct debugnet_pcb*) ;
 char* inet_ntoa_r (TYPE_1__,char*) ;
 int memset (struct debugnet_conn_params*,int ,int) ;
 TYPE_4__ nd_client ;
 TYPE_3__ nd_conf ;
 TYPE_2__ nd_gateway ;
 int nd_ifp ;
 scalar_t__* nd_path ;
 TYPE_1__ nd_server ;
 int netdump_enabled () ;
 int * panicstr ;
 int printf (char*,...) ;
 scalar_t__ strlen (scalar_t__*) ;

__attribute__((used)) static int
netdump_start(struct dumperinfo *di)
{
 struct debugnet_conn_params dcp;
 struct debugnet_pcb *pcb;
 char buf[INET_ADDRSTRLEN];
 int error;

 error = 0;


 if (!netdump_enabled())
  return (EINVAL);

 if (panicstr == ((void*)0)) {
  printf(
      "netdump_start: netdump may only be used after a panic\n");
  return (EINVAL);
 }

 memset(&dcp, 0, sizeof(dcp));

 if (nd_server.s_addr == INADDR_ANY) {
  printf("netdump_start: can't netdump; no server IP given\n");
  return (EINVAL);
 }


 di->dumpoff = 0;

 dcp.dc_ifp = nd_ifp;

 dcp.dc_client = nd_client.s_addr;
 dcp.dc_server = nd_server.s_addr;
 dcp.dc_gateway = nd_gateway.s_addr;

 dcp.dc_herald_port = NETDUMP_PORT;
 dcp.dc_client_port = NETDUMP_ACKPORT;

 dcp.dc_herald_data = nd_path;
 dcp.dc_herald_datalen = (nd_path[0] == 0) ? 0 : strlen(nd_path) + 1;

 error = debugnet_connect(&dcp, &pcb);
 if (error != 0) {
  printf("failed to contact netdump server\n");

  return (EINVAL);
 }

 printf("netdumping to %s (%6D)\n", inet_ntoa_r(nd_server, buf),
     debugnet_get_gw_mac(pcb), ":");
 nd_conf.nd_pcb = pcb;
 return (0);
}
