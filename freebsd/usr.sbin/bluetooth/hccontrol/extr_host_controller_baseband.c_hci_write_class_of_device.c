
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_write_unit_class_rp ;
struct TYPE_4__ {int* uclass; } ;
typedef TYPE_2__ ng_hci_write_unit_class_cp ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_WRITE_UNIT_CLASS ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int fprintf (int ,char*,char*,int) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int sscanf (char*,char*,int*,int*,int*) ;
 int stdout ;

__attribute__((used)) static int
hci_write_class_of_device(int s, int argc, char **argv)
{
 ng_hci_write_unit_class_cp cp;
 ng_hci_write_unit_class_rp rp;
 int n0, n1, n2;


 switch (argc) {
 case 1:
  if (sscanf(argv[0], "%x:%x:%x", &n2, &n1, &n0) != 3)
   return (USAGE);

  cp.uclass[0] = (n0 & 0xff);
  cp.uclass[1] = (n1 & 0xff);
  cp.uclass[2] = (n2 & 0xff);
  break;

 default:
  return (USAGE);
 }


 n0 = sizeof(rp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_WRITE_UNIT_CLASS),
   (char const *) &cp, sizeof(cp),
   (char *) &rp, &n0) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 return (OK);
}
