
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rp ;
struct TYPE_2__ {int status; int encryption_mode; } ;
typedef TYPE_1__ ng_hci_read_encryption_mode_rp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_READ_ENCRYPTION_MODE ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int fprintf (int ,char*,char*,int) ;
 char* hci_encrypt2str (int,int ) ;
 scalar_t__ hci_simple_request (int,int ,char*,int*) ;
 char* hci_status2str (int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_encryption_mode(int s, int argc, char **argv)
{
 ng_hci_read_encryption_mode_rp rp;
 int n;

 n = sizeof(rp);
 if (hci_simple_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_READ_ENCRYPTION_MODE),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "Encryption mode: %s [%#02x]\n",
  hci_encrypt2str(rp.encryption_mode, 0), rp.encryption_mode);

 return (OK);
}
