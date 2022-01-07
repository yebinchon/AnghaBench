
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_btsocket_hci_raw_node_bdaddr {int bdaddr; } ;
typedef int r ;


 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_GET_BDADDR ;
 char* bt_ntoa (int *,int *) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ioctl (int,int ,struct ng_btsocket_hci_raw_node_bdaddr*,int) ;
 int memset (struct ng_btsocket_hci_raw_node_bdaddr*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_node_bd_addr(int s, int argc, char **argv)
{
 struct ng_btsocket_hci_raw_node_bdaddr r;

 memset(&r, 0, sizeof(r));
 if (ioctl(s, SIOC_HCI_RAW_NODE_GET_BDADDR, &r, sizeof(r)) < 0)
  return (ERROR);

 fprintf(stdout, "BD_ADDR: %s\n", bt_ntoa(&r.bdaddr, ((void*)0)));

 return (OK);
}
