
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_addr; } ;
typedef int bdaddr_t ;
typedef int bdaddr ;


 int bt_aton (int ,int *) ;
 struct hostent* bt_gethostbyname (int ) ;
 int do_l2cap_command (int *,int,char**) ;
 int errx (int,char*,int ,int ) ;
 int getopt (int,char**,char*) ;
 int h_errno ;
 int hstrerror (int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 int numeric_bdaddr ;
 int optarg ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int n;
 bdaddr_t bdaddr;

 memset(&bdaddr, 0, sizeof(bdaddr));


 while ((n = getopt(argc, argv, "a:nh")) != -1) {
  switch (n) {
  case 'a':
   if (!bt_aton(optarg, &bdaddr)) {
    struct hostent *he = ((void*)0);

    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(1, "%s: %s", optarg, hstrerror(h_errno));

    memcpy(&bdaddr, he->h_addr, sizeof(bdaddr));
   }
   break;

  case 'n':
   numeric_bdaddr = 1;
   break;

  case 'h':
  default:
   usage();
   break;
  }
 }

 argc -= optind;
 argv += optind;

 if (*argv == ((void*)0))
  usage();

 return (do_l2cap_command(&bdaddr, argc, argv));
}
