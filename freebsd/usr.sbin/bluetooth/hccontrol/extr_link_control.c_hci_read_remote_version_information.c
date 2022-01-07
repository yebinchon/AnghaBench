
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int con_handle; } ;
typedef TYPE_1__ ng_hci_read_remote_ver_info_cp ;
struct TYPE_5__ {int status; int manufacturer; int con_handle; int lmp_version; int lmp_subversion; } ;
typedef TYPE_2__ ng_hci_read_remote_ver_info_compl_ep ;
struct TYPE_6__ {scalar_t__ event; } ;
typedef TYPE_3__ ng_hci_event_pkt_t ;
typedef int cp ;
typedef int b ;


 int EIO ;
 scalar_t__ ERROR ;
 int FAILED ;
 scalar_t__ NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL ;
 int NG_HCI_OCF_READ_REMOTE_VER_INFO ;
 int NG_HCI_OGF_LINK_CONTROL ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int errno ;
 int fprintf (int ,char*,...) ;
 char* hci_lmpver2str (int) ;
 char* hci_manufacturer2str (int) ;
 scalar_t__ hci_recv (int,char*,int*) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int htole16 (int) ;
 int le16toh (int) ;
 int sscanf (char*,char*,int*) ;
 int stdout ;

__attribute__((used)) static int
hci_read_remote_version_information(int s, int argc, char **argv)
{
 int n;
 char b[512];
 ng_hci_read_remote_ver_info_cp cp;
 ng_hci_event_pkt_t *e = (ng_hci_event_pkt_t *) b;


 switch (argc) {
 case 1:

  if (sscanf(argv[0], "%d", &n) != 1 || n < 0 || n > 0x0eff)
   return (USAGE);

  cp.con_handle = (n & 0x0fff);
  cp.con_handle = htole16(cp.con_handle);
  break;

 default:
  return (USAGE);
 }


 n = sizeof(b);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_LINK_CONTROL,
   NG_HCI_OCF_READ_REMOTE_VER_INFO),
   (char const *) &cp, sizeof(cp), b, &n) == ERROR)
  return (ERROR);

 if (*b != 0x00)
  return (FAILED);


again:
 n = sizeof(b);
 if (hci_recv(s, b, &n) == ERROR)
  return (ERROR);

 if (n < sizeof(*e)) {
  errno = EIO;
  return (ERROR);
 }

 if (e->event == NG_HCI_EVENT_READ_REMOTE_VER_INFO_COMPL) {
  ng_hci_read_remote_ver_info_compl_ep *ep =
    (ng_hci_read_remote_ver_info_compl_ep *)(e + 1);

  if (ep->status != 0x00) {
   fprintf(stdout, "Status: %s [%#02x]\n",
    hci_status2str(ep->status), ep->status);
   return (FAILED);
  }

  ep->manufacturer = le16toh(ep->manufacturer);

  fprintf(stdout, "Connection handle: %d\n",
   le16toh(ep->con_handle));
  fprintf(stdout, "LMP version: %s [%#02x]\n",
   hci_lmpver2str(ep->lmp_version), ep->lmp_version);
  fprintf(stdout, "LMP sub-version: %#04x\n",
   le16toh(ep->lmp_subversion));
  fprintf(stdout, "Manufacturer: %s [%#04x]\n",
   hci_manufacturer2str(ep->manufacturer),
   ep->manufacturer);
 } else
  goto again;

 return (OK);
}
