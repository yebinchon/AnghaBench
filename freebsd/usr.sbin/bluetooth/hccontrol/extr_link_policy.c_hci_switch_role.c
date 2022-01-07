
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostent {int h_addr; } ;
struct TYPE_4__ {int role; int bdaddr; } ;
typedef TYPE_1__ ng_hci_switch_role_cp ;
struct TYPE_5__ {int status; int role; int bdaddr; } ;
typedef TYPE_2__ ng_hci_role_change_ep ;
struct TYPE_6__ {scalar_t__ event; } ;
typedef TYPE_3__ ng_hci_event_pkt_t ;
typedef int cp ;
typedef int b ;


 int EIO ;
 scalar_t__ ERROR ;
 int FAILED ;
 scalar_t__ NG_HCI_EVENT_ROLE_CHANGE ;
 int NG_HCI_OCF_SWITCH_ROLE ;
 int NG_HCI_OGF_LINK_POLICY ;
 int NG_HCI_OPCODE (int ,int ) ;
 int NG_HCI_ROLE_MASTER ;
 int NG_HCI_ROLE_SLAVE ;
 int OK ;
 int USAGE ;
 int bt_aton (char*,int *) ;
 struct hostent* bt_gethostbyname (char*) ;
 int errno ;
 int fprintf (int ,char*,char*,...) ;
 char* hci_bdaddr2str (int *) ;
 scalar_t__ hci_recv (int,char*,int*) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int memcpy (int *,int ,int) ;
 int sscanf (char*,char*,int*) ;
 int stdout ;

__attribute__((used)) static int
hci_switch_role(int s, int argc, char **argv)
{
 int n0;
 char b[512];
 ng_hci_switch_role_cp cp;
 ng_hci_event_pkt_t *e = (ng_hci_event_pkt_t *) b;


 switch (argc) {
 case 2:

  if (!bt_aton(argv[0], &cp.bdaddr)) {
   struct hostent *he = ((void*)0);

   if ((he = bt_gethostbyname(argv[0])) == ((void*)0))
    return (USAGE);

   memcpy(&cp.bdaddr, he->h_addr, sizeof(cp.bdaddr));
  }


  if (sscanf(argv[1], "%d", &n0) != 1)
   return (USAGE);

  cp.role = n0? NG_HCI_ROLE_SLAVE : NG_HCI_ROLE_MASTER;
  break;

 default:
  return (USAGE);
 }


 n0 = sizeof(b);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_LINK_POLICY,
   NG_HCI_OCF_SWITCH_ROLE),
   (char const *) &cp, sizeof(cp), b, &n0) == ERROR)
  return (ERROR);

 if (*b != 0x00)
  return (FAILED);


again:
 n0 = sizeof(b);
 if (hci_recv(s, b, &n0) == ERROR)
  return (ERROR);
 if (n0 < sizeof(*e)) {
  errno = EIO;
  return (ERROR);
 }

 if (e->event == NG_HCI_EVENT_ROLE_CHANGE) {
  ng_hci_role_change_ep *ep = (ng_hci_role_change_ep *)(e + 1);

  if (ep->status != 0x00) {
   fprintf(stdout, "Status: %s [%#02x]\n",
    hci_status2str(ep->status), ep->status);
   return (FAILED);
  }

  fprintf(stdout, "BD_ADDR: %s\n", hci_bdaddr2str(&ep->bdaddr));
  fprintf(stdout, "Role: %s [%#x]\n",
   (ep->role == NG_HCI_ROLE_MASTER)? "Master" : "Slave",
   ep->role);
 } else
  goto again;

 return (OK);
}
