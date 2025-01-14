
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rp ;
struct TYPE_2__ {int status; int hold_mode_activity; } ;
typedef TYPE_1__ ng_hci_read_hold_mode_activity_rp ;
typedef int buffer ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int fprintf (int ,char*,...) ;
 char* hci_hmode2str (scalar_t__,char*,int) ;
 scalar_t__ hci_simple_request (int,int ,char*,int*) ;
 char* hci_status2str (int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_hold_mode_activity(int s, int argc, char **argv)
{
 ng_hci_read_hold_mode_activity_rp rp;
 int n;
 char buffer[1024];

 n = sizeof(rp);
 if (hci_simple_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_READ_HOLD_MODE_ACTIVITY),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "Hold Mode Activities: %#02x\n", rp.hold_mode_activity);
 if (rp.hold_mode_activity == 0)
  fprintf(stdout, "Maintain current Power State");
 else
  fprintf(stdout, "%s", hci_hmode2str(rp.hold_mode_activity,
    buffer, sizeof(buffer)));

 fprintf(stdout, "\n");

 return (OK);
}
