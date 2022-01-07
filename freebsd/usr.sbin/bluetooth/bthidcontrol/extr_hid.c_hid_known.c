
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; } ;
struct hid_device {int bdaddr; scalar_t__ new_device; } ;
typedef int bdaddr_t ;


 int AF_BLUETOOTH ;
 int FAILED ;
 int OK ;
 struct hostent* bt_gethostbyaddr (char*,int,int ) ;
 char* bt_ntoa (int *,int *) ;
 int clean_config () ;
 int fprintf (int ,char*,char*,char*) ;
 struct hid_device* get_next_hid_device (struct hid_device*) ;
 scalar_t__ read_config_file () ;
 scalar_t__ read_hids_file () ;
 int stdout ;

__attribute__((used)) static int
hid_known(bdaddr_t *bdaddr, int argc, char **argv)
{
 struct hid_device *hd = ((void*)0);
 struct hostent *he = ((void*)0);
 int e = FAILED;

 if (read_config_file() == 0) {
  if (read_hids_file() == 0) {
   e = OK;

   for (hd = get_next_hid_device(hd);
        hd != ((void*)0);
        hd = get_next_hid_device(hd)) {
    if (hd->new_device)
     continue;

    he = bt_gethostbyaddr((char *) &hd->bdaddr,
      sizeof(hd->bdaddr),
      AF_BLUETOOTH);

    fprintf(stdout,
"%s %s\n", bt_ntoa(&hd->bdaddr, ((void*)0)),
     (he != ((void*)0) && he->h_name != ((void*)0))?
      he->h_name : "");
   }
  }

  clean_config();
 }

 return (e);
}
