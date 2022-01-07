
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_hci {int hci_node; } ;
struct TYPE_5__ {int key; int bdaddr; } ;
typedef TYPE_1__ ng_hci_link_key_notification_ep ;
typedef TYPE_2__* link_key_p ;
struct TYPE_6__ {char* name; int * key; int bdaddr; } ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int NG_HCI_KEY_SIZE ;
 int bt_ntoa (int *,int *) ;
 int exit (int) ;
 TYPE_2__* get_key (int *,int) ;
 scalar_t__ malloc (int ) ;
 int memcpy (int *,int *,int ) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
process_link_key_notification_event(int sock, struct sockaddr_hci *addr,
  ng_hci_link_key_notification_ep *ep)
{
 link_key_p key = ((void*)0);

 syslog(LOG_DEBUG, "Got Link_Key_Notification event from '%s', " "remote bdaddr %s", addr->hci_node,

   bt_ntoa(&ep->bdaddr, ((void*)0)));

 if ((key = get_key(&ep->bdaddr, 1)) == ((void*)0)) {
  syslog(LOG_ERR, "Could not find entry for remote bdaddr %s",
    bt_ntoa(&ep->bdaddr, ((void*)0)));
  return (-1);
 }

 syslog(LOG_DEBUG, "Updating link key for the entry, " "remote bdaddr %s, name '%s', link key %s",

   bt_ntoa(&key->bdaddr, ((void*)0)),
   (key->name != ((void*)0))? key->name : "No name",
   (key->key != ((void*)0))? "exists" : "doesn't exist");

 if (key->key == ((void*)0)) {
  key->key = (uint8_t *) malloc(NG_HCI_KEY_SIZE);
  if (key->key == ((void*)0)) {
   syslog(LOG_ERR, "Could not allocate link key");
   exit(1);
  }
 }

 memcpy(key->key, &ep->key, NG_HCI_KEY_SIZE);

 return (0);
}
