
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_role_switch {int role_switch; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_SET_ROLE_SWITCH ;
 int USAGE ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_role_switch*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_role_switch*,int ,int) ;
 int sscanf (char*,char*,int*) ;

int
hci_write_node_role_switch(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_role_switch r;
 int m;

 memset(&r, 0, sizeof(r));

 switch (argc) {
 case 1:
  if (sscanf(argv[0], "%d", &m) != 1)
   return (USAGE);

  r.role_switch = m? 1 : 0;
  break;

 default:
  return (USAGE);
 }

 if (ioctl(s, SIOC_HCI_RAW_NODE_SET_ROLE_SWITCH, &r, sizeof(r)) < 0)
  return (ERROR);

 return (OK);
}
