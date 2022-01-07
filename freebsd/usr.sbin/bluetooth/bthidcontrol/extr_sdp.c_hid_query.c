
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int bdaddr; } ;
typedef int int32_t ;
typedef int bdaddr_t ;


 int FAILED ;
 int OK ;
 char* bt_ntoa (int *,int *) ;
 int fprintf (int ,char*,char*,char*,int) ;
 scalar_t__ hid_sdp_query (int *,struct hid_device*,int*) ;
 int memcpy (int *,int *,int) ;
 int print_hid_device (struct hid_device*,int ) ;
 int stderr ;
 int stdout ;
 char* strerror (int) ;

__attribute__((used)) static int32_t
hid_query(bdaddr_t *bdaddr, int argc, char **argv)
{
 struct hid_device hd;
 int e;

 memcpy(&hd.bdaddr, bdaddr, sizeof(hd.bdaddr));
 if (hid_sdp_query(((void*)0), &hd, &e) < 0) {
  fprintf(stderr, "Could not perform SDP query on the " "device %s. %s (%d)\n", bt_ntoa(bdaddr, ((void*)0)),

   strerror(e), e);
  return (FAILED);
 }

 print_hid_device(&hd, stdout);

 return (OK);
}
