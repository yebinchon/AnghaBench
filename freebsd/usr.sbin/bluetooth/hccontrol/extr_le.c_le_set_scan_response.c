
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rp ;
struct TYPE_3__ {int status; } ;
typedef TYPE_1__ ng_hci_le_set_scan_response_data_rp ;
struct TYPE_4__ {int scan_response_data_length; int scan_response_data; } ;
typedef TYPE_2__ ng_hci_le_set_scan_response_data_cp ;
typedef int cp ;
typedef int buf ;


 int NG_HCI_ADVERTISING_DATA_SIZE ;
 int NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA ;
 int NG_HCI_OGF_LE ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int hci_request (int,int ,void*,int,void*,int*) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int parse_param (int,char**,char*,int*) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static int
le_set_scan_response(int s, int argc, char *argv[])
{
 ng_hci_le_set_scan_response_data_cp cp;
 ng_hci_le_set_scan_response_data_rp rp;
 int n;
 int e;
 int len;
 char buf[NG_HCI_ADVERTISING_DATA_SIZE];

 len = sizeof(buf);
 parse_param(argc, argv, buf, &len);
 memset(cp.scan_response_data, 0, sizeof(cp.scan_response_data));
 cp.scan_response_data_length = len;
 memcpy(cp.scan_response_data, buf, len);
 n = sizeof(rp);
 e = hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_LE,
   NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA),
   (void *)&cp, sizeof(cp), (void *)&rp, &n);

 printf("SET SCAN RESPONSE %d %d %d\n", e, rp.status, n);

 return OK;
}
