
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_sent; int evnt_recv; int acl_recv; int acl_sent; int sco_recv; int sco_sent; int bytes_recv; int bytes_sent; } ;
struct ng_btsocket_hci_raw_node_stat {TYPE_1__ stat; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_STAT ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_stat*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_stat*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_node_stat(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_stat r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_STAT, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "Commands sent: %d\n", r.stat.cmd_sent);
 fprintf(stdout, "Events received: %d\n", r.stat.evnt_recv);
 fprintf(stdout, "ACL packets received: %d\n", r.stat.acl_recv);
 fprintf(stdout, "ACL packets sent: %d\n", r.stat.acl_sent);
 fprintf(stdout, "SCO packets received: %d\n", r.stat.sco_recv);
 fprintf(stdout, "SCO packets sent: %d\n", r.stat.sco_sent);
 fprintf(stdout, "Bytes received: %d\n", r.stat.bytes_recv);
 fprintf(stdout, "Bytes sent: %d\n", r.stat.bytes_sent);

 return (OK);
}
