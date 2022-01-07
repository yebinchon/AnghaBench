
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_packet_mask {int packet_mask; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_SET_PACKET_MASK ;
 int USAGE ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_packet_mask*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_packet_mask*,int ,int) ;
 int sscanf (char*,char*,int*) ;

int
hci_write_node_packet_mask(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_packet_mask r;
 int m;

 memset(&r, 0, sizeof(r));

 switch (argc) {
 case 1:
  if (sscanf(argv[0], "%x", &m) != 1)
   return (USAGE);

  r.packet_mask = (m & 0xffff);
  break;

 default:
  return (USAGE);
 }

 if (ioctl(s, SIOC_HCI_RAW_NODE_SET_PACKET_MASK, &r, sizeof(r)) < 0)
  return (ERROR);

 return (OK);
}
