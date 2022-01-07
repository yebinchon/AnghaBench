
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rp ;
struct TYPE_2__ {int status; int bdaddr; } ;
typedef TYPE_1__ ng_hci_read_bdaddr_rp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_READ_BDADDR ;
 int NG_HCI_OGF_INFO ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 char* bt_ntoa (int *,int *) ;
 int fprintf (int ,char*,char*,...) ;
 scalar_t__ hci_simple_request (int,int ,char*,int*) ;
 char* hci_status2str (int) ;
 int stdout ;

__attribute__((used)) static int
hci_read_bd_addr(int s, int argc, char **argv)
{
 ng_hci_read_bdaddr_rp rp;
 int n;

 n = sizeof(rp);
 if (hci_simple_request(s, NG_HCI_OPCODE(NG_HCI_OGF_INFO,
   NG_HCI_OCF_READ_BDADDR), (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "BD_ADDR: %s\n", bt_ntoa(&rp.bdaddr, ((void*)0)));

 return (OK);
}
