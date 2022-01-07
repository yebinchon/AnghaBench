
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_state {int state; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_STATE ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_state*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_state*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_node_state(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_state r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_STATE, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "State: %#x\n", r.state);

 return (OK);
}
