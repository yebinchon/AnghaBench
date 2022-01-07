
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rp ;
struct TYPE_3__ {scalar_t__ status; } ;
typedef TYPE_1__ ng_hci_le_set_scan_enable_rp ;
struct TYPE_4__ {int le_scan_enable; scalar_t__ filter_duplicates; } ;
typedef TYPE_2__ ng_hci_le_set_scan_enable_cp ;
typedef int cp ;


 int ERROR ;
 int NG_HCI_OCF_LE_SET_SCAN_ENABLE ;
 int NG_HCI_OGF_LE ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int hci_request (int,int ,void*,int,void*,int*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
le_set_scan_enable(int s, int argc, char *argv[])
{
 ng_hci_le_set_scan_enable_cp cp;
 ng_hci_le_set_scan_enable_rp rp;
 int e, n, enable = 0;

 if (argc != 1)
  return USAGE;

 if (strcmp(argv[0], "enable") == 0)
  enable = 1;
 else if (strcmp(argv[0], "disable") != 0)
  return USAGE;

 n = sizeof(rp);
 cp.le_scan_enable = enable;
 cp.filter_duplicates = 0;
 e = hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_LE,
  NG_HCI_OCF_LE_SET_SCAN_ENABLE),
  (void *)&cp, sizeof(cp), (void *)&rp, &n);

 if (e != 0 || rp.status != 0)
  return ERROR;

 return OK;
}
