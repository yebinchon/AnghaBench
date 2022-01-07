
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cmd_free; int acl_size; int acl_free; int acl_pkts; int sco_size; int sco_free; int sco_pkts; } ;
struct ng_btsocket_hci_raw_node_buffer {TYPE_1__ buffer; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_BUFFER ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_buffer*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_buffer*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_node_buffer_size(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_buffer r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_BUFFER, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "Number of free command buffers: %d\n",
  r.buffer.cmd_free);
 fprintf(stdout, "Max. ACL packet size: %d\n",
  r.buffer.acl_size);
 fprintf(stdout, "Numbef of free ACL buffers: %d\n",
  r.buffer.acl_free);
 fprintf(stdout, "Total number of ACL buffers: %d\n",
  r.buffer.acl_pkts);
 fprintf(stdout, "Max. SCO packet size: %d\n",
  r.buffer.sco_size);
 fprintf(stdout, "Numbef of free SCO buffers: %d\n",
  r.buffer.sco_free);
 fprintf(stdout, "Total number of SCO buffers: %d\n",
  r.buffer.sco_pkts);

 return (OK);
}
