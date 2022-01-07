
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ng_hci_cmd_pkt_t ;


 int ERROR ;
 int NG_HCI_CMD_PKT_SIZE ;
 int OK ;
 int assert (int) ;
 scalar_t__ send (int,char const*,int,int ) ;

int
hci_send(int s, char const *buffer, int size)
{
 assert(buffer != ((void*)0));
 assert(size >= sizeof(ng_hci_cmd_pkt_t));
 assert(size <= sizeof(ng_hci_cmd_pkt_t) + NG_HCI_CMD_PKT_SIZE);

 if (send(s, buffer, size, 0) < 0)
  return (ERROR);

 return (OK);
}
