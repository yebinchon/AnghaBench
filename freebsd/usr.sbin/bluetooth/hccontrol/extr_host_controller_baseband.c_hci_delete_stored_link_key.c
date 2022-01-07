
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hostent {int h_addr; } ;
struct TYPE_4__ {int status; int num_keys_deleted; } ;
typedef TYPE_1__ ng_hci_delete_stored_link_key_rp ;
struct TYPE_5__ {int delete_all; int bdaddr; } ;
typedef TYPE_2__ ng_hci_delete_stored_link_key_cp ;
typedef int int32_t ;
typedef int cp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_DELETE_STORED_LINK_KEY ;
 int NG_HCI_OGF_HC_BASEBAND ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int USAGE ;
 int bt_aton (char*,int *) ;
 struct hostent* bt_gethostbyname (char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ hci_request (int,int ,char const*,int,char*,int*) ;
 char* hci_status2str (int) ;
 int memcpy (int *,int ,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int stdout ;

__attribute__((used)) static int
hci_delete_stored_link_key(int s, int argc, char **argv)
{
 ng_hci_delete_stored_link_key_cp cp;
 ng_hci_delete_stored_link_key_rp rp;
 int32_t n;

 memset(&cp, 0, sizeof(cp));

 switch (argc) {
 case 1:

  if (!bt_aton(argv[0], &cp.bdaddr)) {
   struct hostent *he = ((void*)0);

   if ((he = bt_gethostbyname(argv[0])) == ((void*)0))
    return (USAGE);

   memcpy(&cp.bdaddr, he->h_addr, sizeof(cp.bdaddr));
  }
  break;

 default:
  cp.delete_all = 1;
  break;
 }


 n = sizeof(cp);
 if (hci_request(s, NG_HCI_OPCODE(NG_HCI_OGF_HC_BASEBAND,
   NG_HCI_OCF_DELETE_STORED_LINK_KEY),
   (char const *) &cp, sizeof(cp),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "Number of keys deleted: %d\n", rp.num_keys_deleted);

 return (OK);
}
