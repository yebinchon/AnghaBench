
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_addr; } ;
typedef int bdaddr_t ;
typedef int bdaddr ;


 int NG_HCI_BDADDR_ANY ;
 int bt_aton (void*,int *) ;
 struct hostent* bt_gethostbyname (void*) ;
 void* config_file ;
 int do_bthid_command (int *,int,char**) ;
 int errx (int,char*,void*,int ) ;
 int getopt (int,char**,char*) ;
 int h_errno ;
 int hid_init (int *) ;
 void* hids_file ;
 int hstrerror (int ) ;
 int memcpy (int *,int ,int) ;
 void* optarg ;
 scalar_t__ optind ;
 int usage () ;
 int verbose ;

int
main(int argc, char *argv[])
{
 bdaddr_t bdaddr;
 int opt;

 hid_init(((void*)0));
 memcpy(&bdaddr, NG_HCI_BDADDR_ANY, sizeof(bdaddr));

 while ((opt = getopt(argc, argv, "a:c:H:hv")) != -1) {
  switch (opt) {
  case 'a':
   if (!bt_aton(optarg, &bdaddr)) {
    struct hostent *he = ((void*)0);

    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(1, "%s: %s", optarg, hstrerror(h_errno));

    memcpy(&bdaddr, he->h_addr, sizeof(bdaddr));
   }
   break;

  case 'c':
   config_file = optarg;
   break;

  case 'H':
   hids_file = optarg;
   break;

  case 'v':
   verbose++;
   break;

  case 'h':
  default:
   usage();

  }
 }

 argc -= optind;
 argv += optind;

 if (*argv == ((void*)0))
  usage();

 return (do_bthid_command(&bdaddr, argc, argv));
}
