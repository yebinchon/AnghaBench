
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_link_policy_mask {int policy_mask; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_link_policy_mask*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_link_policy_mask*,int ,int) ;
 int stdout ;

int
hci_read_node_link_policy_settings_mask(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_link_policy_mask r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_LINK_POLICY_MASK, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "Link Policy Settings mask: %#04x\n", r.policy_mask);

 return (OK);
}
