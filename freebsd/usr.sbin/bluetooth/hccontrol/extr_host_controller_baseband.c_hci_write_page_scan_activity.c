
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_write_page_scan_activity_rp ;
struct TYPE_4__ {void* page_scan_window; void* page_scan_interval; } ;
typedef TYPE_2__ ng_hci_write_page_scan_activity_cp ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_WRITE_PAGE_SCAN_ACTIVITY ;
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
hci_write_page_scan_activity(int s, int argc, char **argv)
{
 ng_hci_write_page_scan_activity_cp cp;
 ng_hci_write_page_scan_activity_rp rp;
 int n;


 switch (argc) {
 case 2:

  if (sscanf(argv[0], "%d", &n) != 1 || n < 0x12 || n > 0x1000)
   return (USAGE);

  cp.page_scan_interval = (uint16_t) n;


  if (sscanf(argv[1], "%d", &n) != 1 || n < 0x12 || n > 0x1000)
   return (USAGE);

  cp.page_scan_window = (uint16_t) n;

  if (cp.page_scan_window > cp.page_scan_interval)
   return (USAGE);

  cp.page_scan_interval = htole16(cp.page_scan_interval);
  cp.page_scan_window = htole16(cp.page_scan_window);
  break;

 default:
  return (USAGE);
 }


 n = sizeof(rp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_WRITE_PAGE_SCAN_ACTIVITY),
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
