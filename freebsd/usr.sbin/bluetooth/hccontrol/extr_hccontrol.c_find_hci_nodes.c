
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_hci {int hci_len; int hci_node; int hci_family; } ;
struct sockaddr {int dummy; } ;
struct nodeinfo {int dummy; } ;
struct ng_btsocket_hci_raw_node_list_names {int num_names; struct nodeinfo* names; } ;
typedef int r ;
typedef int addr ;


 int AF_BLUETOOTH ;
 int BLUETOOTH_PROTO_HCI ;
 int MAX_NODE_NUM ;
 int PF_BLUETOOTH ;
 int SIOC_HCI_RAW_NODE_LIST_NAMES ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ calloc (int,int) ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_list_names*,int) ;
 int memset (struct sockaddr_hci*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char const*,int) ;

__attribute__((used)) static int
find_hci_nodes(struct nodeinfo** nodes)
{
 struct ng_btsocket_hci_raw_node_list_names r;
 struct sockaddr_hci addr;
 int s;
 const char * node = "ubt0hci";

 r.num_names = MAX_NODE_NUM;
 r.names = (struct nodeinfo*)calloc(MAX_NODE_NUM, sizeof(struct nodeinfo));
 if (r.names == ((void*)0))
  err(8, "Could not allocate memory");

 s = socket(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_HCI);
 if (s < 0)
  err(9, "Could not create socket");

 memset(&addr, 0, sizeof(addr));
 addr.hci_len = sizeof(addr);
 addr.hci_family = AF_BLUETOOTH;
 strncpy(addr.hci_node, node, sizeof(addr.hci_node));
 if (bind(s, (struct sockaddr *) &addr, sizeof(addr)) < 0)
  err(10, "Could not bind socket");

 if (ioctl(s, SIOC_HCI_RAW_NODE_LIST_NAMES, &r, sizeof(r)) < 0)
  err(11, "Could not get list of HCI nodes");

 close(s);

 *nodes = r.names;

 return (r.num_names);
}
