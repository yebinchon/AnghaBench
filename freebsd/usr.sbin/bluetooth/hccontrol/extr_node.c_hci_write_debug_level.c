
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_debug {int debug; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_SET_DEBUG ;
 int USAGE ;
 int atoi (char*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_debug*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_debug*,int ,int) ;

__attribute__((used)) static int
hci_write_debug_level(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_debug r;

 memset(&r, 0, sizeof(r));
 switch (argc) {
 case 1:
  r.debug = atoi(argv[0]);
  break;

 default:
  return (USAGE);
 }

 if (ioctl(s, SIOC_HCI_RAW_NODE_SET_DEBUG, &r, sizeof(r)) < 0)
  return (ERROR);

 return (OK);
}
