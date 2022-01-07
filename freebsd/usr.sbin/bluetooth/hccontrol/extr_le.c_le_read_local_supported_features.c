
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int rp ;
struct TYPE_2__ {int status; scalar_t__ le_features; } ;
typedef TYPE_1__ ng_hci_le_read_local_supported_features_rp ;


 int NG_HCI_OCF_LE_READ_LOCAL_SUPPORTED_FEATURES ;
 int NG_HCI_OGF_LE ;
 int NG_HCI_OPCODE (int ,int ) ;
 int hci_simple_request (int,int ,void*,int*) ;
 int printf (char*,int,int,int ) ;

__attribute__((used)) static int
le_read_local_supported_features(int s, int argc ,char *argv[])
{
 ng_hci_le_read_local_supported_features_rp rp;
 int e;
 int n = sizeof(rp);

 e = hci_simple_request(s,
   NG_HCI_OPCODE(NG_HCI_OGF_LE,
   NG_HCI_OCF_LE_READ_LOCAL_SUPPORTED_FEATURES),
   (void *)&rp, &n);

 printf("LOCAL SUPPORTED: %d %d %jx\n", e, rp.status,
        (uintmax_t) rp.le_features);

 return 0;
}
