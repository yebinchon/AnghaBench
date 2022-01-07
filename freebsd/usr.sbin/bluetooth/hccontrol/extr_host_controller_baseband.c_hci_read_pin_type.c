
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rp ;
struct TYPE_2__ {int status; int pin_type; } ;
typedef TYPE_1__ ng_hci_read_pin_type_rp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_READ_PIN_TYPE ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int fprintf (int ,char*,char*,int) ;
 char* hci_pin2str (int) ;
 scalar_t__ hci_simple_request (int,int ,char*,int*) ;
 char* hci_status2str (int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_pin_type(int s, int argc, char **argv)
{
 ng_hci_read_pin_type_rp rp;
 int n;

 n = sizeof(rp);
 if (hci_simple_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_READ_PIN_TYPE),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "PIN type: %s [%#02x]\n",
   hci_pin2str(rp.pin_type), rp.pin_type);

 return (OK);
}
