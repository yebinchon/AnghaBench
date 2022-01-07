
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rp ;
struct TYPE_2__ {int status; int max_sco_size; int num_sco_pkt; int num_acl_pkt; int max_acl_size; } ;
typedef TYPE_1__ ng_hci_read_buffer_size_rp ;


 scalar_t__ ERROR ;
 int FAILED ;
 int NG_HCI_OCF_READ_BUFFER_SIZE ;
 int NG_HCI_OGF_INFO ;
 int NG_HCI_OPCODE (int ,int ) ;
 int OK ;
 int fprintf (int ,char*,...) ;
 scalar_t__ hci_simple_request (int,int ,char*,int*) ;
 char* hci_status2str (int) ;
 int le16toh (int ) ;
 int stdout ;

__attribute__((used)) static int
hci_read_buffer_size(int s, int argc, char **argv)
{
 ng_hci_read_buffer_size_rp rp;
 int n;

 n = sizeof(rp);
 if (hci_simple_request(s, NG_HCI_OPCODE(NG_HCI_OGF_INFO,
   NG_HCI_OCF_READ_BUFFER_SIZE),
   (char *) &rp, &n) == ERROR)
  return (ERROR);

 if (rp.status != 0x00) {
  fprintf(stdout, "Status: %s [%#02x]\n",
   hci_status2str(rp.status), rp.status);
  return (FAILED);
 }

 fprintf(stdout, "Max. ACL packet size: %d bytes\n",
  le16toh(rp.max_acl_size));
 fprintf(stdout, "Number of ACL packets: %d\n",
  le16toh(rp.num_acl_pkt));
 fprintf(stdout, "Max. SCO packet size: %d bytes\n",
  rp.max_sco_size);
 fprintf(stdout, "Number of SCO packets: %d\n",
  le16toh(rp.num_sco_pkt));

 return (OK);
}
