
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_addr; } ;
typedef int bdaddr_t ;
typedef int bdaddr ;


 char* SDP_LOCAL_PATH ;
 int bt_aton (char*,int *) ;
 struct hostent* bt_gethostbyname (char*) ;
 int do_sdp_command (int *,char const*,int,int,char**) ;
 int errx (int,char*,char*,int ) ;
 int getopt (int,char**,char*) ;
 int h_errno ;
 int hstrerror (int ) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 char const *control = SDP_LOCAL_PATH;
 int n, local;
 bdaddr_t bdaddr;

 memset(&bdaddr, 0, sizeof(bdaddr));
 local = 0;


 while ((n = getopt(argc, argv, "a:c:lh")) != -1) {
  switch (n) {
  case 'a':
   if (!bt_aton(optarg, &bdaddr)) {
    struct hostent *he = ((void*)0);

    if ((he = bt_gethostbyname(optarg)) == ((void*)0))
     errx(1, "%s: %s", optarg, hstrerror(h_errno));

    memcpy(&bdaddr, he->h_addr, sizeof(bdaddr));
   }
   break;

  case 'c':
   control = optarg;
   break;

  case 'l':
   local = 1;
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

 return (do_sdp_command(&bdaddr, control, local, argc, argv));
}
