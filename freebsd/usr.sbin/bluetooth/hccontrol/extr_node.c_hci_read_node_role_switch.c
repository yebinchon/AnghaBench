
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_role_switch {int role_switch; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_role_switch*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_role_switch*,int ,int) ;
 int stdout ;

int
hci_read_node_role_switch(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_role_switch r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_ROLE_SWITCH, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "Role switch: %d\n", r.role_switch);

 return (OK);
}
