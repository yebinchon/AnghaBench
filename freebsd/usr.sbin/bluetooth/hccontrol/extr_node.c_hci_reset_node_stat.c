
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int OK ;
 int SIOC_HCI_RAW_NODE_RESET_STAT ;
 scalar_t__ ioctl (int,int ) ;

__attribute__((used)) static int
hci_reset_node_stat(int s, int argc, char **argv)
{
 if (ioctl(s, SIOC_HCI_RAW_NODE_RESET_STAT) < 0)
  return (ERROR);

 return (OK);
}
