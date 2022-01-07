
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_hci {int hci_node; } ;
typedef TYPE_1__* link_key_p ;
typedef int * bdaddr_p ;
struct TYPE_3__ {char* name; int * key; int bdaddr; } ;


 int LOG_DEBUG ;
 int bt_ntoa (int *,int *) ;
 TYPE_1__* get_key (int *,int ) ;
 int send_link_key_reply (int,struct sockaddr_hci*,int *,int *) ;
 int syslog (int ,char*,int ,...) ;

__attribute__((used)) static int
process_link_key_request_event(int sock, struct sockaddr_hci *addr,
  bdaddr_p bdaddr)
{
 link_key_p key = ((void*)0);

 syslog(LOG_DEBUG, "Got Link_Key_Request event from '%s', " "remote bdaddr %s", addr->hci_node,

   bt_ntoa(bdaddr, ((void*)0)));

 if ((key = get_key(bdaddr, 0)) != ((void*)0)) {
  syslog(LOG_DEBUG, "Found matching entry, " "remote bdaddr %s, name '%s', link key %s",

    bt_ntoa(&key->bdaddr, ((void*)0)),
    (key->name != ((void*)0))? key->name : "No name",
    (key->key != ((void*)0))? "exists" : "doesn't exist");

  return (send_link_key_reply(sock, addr, bdaddr, key->key));
 }

 syslog(LOG_DEBUG, "Could not find link key for remote bdaddr %s",
   bt_ntoa(bdaddr, ((void*)0)));

 return (send_link_key_reply(sock, addr, bdaddr, ((void*)0)));
}
