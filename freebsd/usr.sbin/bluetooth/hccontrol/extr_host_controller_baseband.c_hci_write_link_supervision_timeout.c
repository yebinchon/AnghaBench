
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_write_link_supervision_timo_rp ;
struct TYPE_4__ {void* timeout; void* con_handle; } ;
typedef TYPE_2__ ng_hci_write_link_supervision_timo_cp ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_WRITE_LINK_SUPERVISION_TIMO ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int fprintf (int ,char*,char*,int) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 void* htole16 (void*) ;
 int sscanf (char*,char*,int*) ;
 int stdout ;

__attribute__((used)) static int
hci_write_link_supervision_timeout(int s, int argc, char **argv)
{
 ng_hci_write_link_supervision_timo_cp cp;
 ng_hci_write_link_supervision_timo_rp rp;
 int n;

 switch (argc) {
 case 2:

  if (sscanf(argv[0], "%d", &n) != 1 || n <= 0 || n > 0x0eff)
   return (USAGE);

  cp.con_handle = (uint16_t) (n & 0x0fff);
  cp.con_handle = htole16(cp.con_handle);


  if (sscanf(argv[1], "%d", &n) != 1 || n < 0 || n > 0xffff)
   return (USAGE);

  cp.timeout = (uint16_t) (n & 0x0fff);
  cp.timeout = htole16(cp.timeout);
  break;

 default:
  return (USAGE);
 }


 n = sizeof(rp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_WRITE_LINK_SUPERVISION_TIMO),
   (char const *) &cp, sizeof(cp),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 return (OK);
}
