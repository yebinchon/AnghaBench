
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_change_local_name_rp ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ ng_hci_change_local_name_cp ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_CHANGE_LOCAL_NAME ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int fprintf (int ,char*,char*,int) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int snprintf (int ,int,char*,char*) ;
 int stdout ;

__attribute__((used)) static int
hci_change_local_name(int s, int argc, char **argv)
{
 ng_hci_change_local_name_cp cp;
 ng_hci_change_local_name_rp rp;
 int n;


 switch (argc) {
 case 1:
  snprintf(cp.name, sizeof(cp.name), "%s", argv[0]);
  break;

 default:
  return (USAGE);
 }


 n = sizeof(rp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_CHANGE_LOCAL_NAME),
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
