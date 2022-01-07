
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_packet_mask {int packet_mask; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_PACKET_MASK ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_packet_mask*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_packet_mask*,int ,int) ;
 int stdout ;

int
hci_read_node_packet_mask(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_packet_mask r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_PACKET_MASK, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "Packet mask: %#04x\n", r.packet_mask);

 return (OK);
}
