
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARP_XO_VERSION ;
 scalar_t__ ENXIO ;





 int SETFUNC (int) ;
 int delete (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int file (char*) ;
 int get (char*) ;
 int getopt (int,char**,char*) ;
 int if_freenameindex (int *) ;
 scalar_t__ if_nametoindex (scalar_t__) ;
 int * ifnameindex ;
 int nflag ;
 int nuke_entry ;
 scalar_t__ optarg ;
 scalar_t__ optind ;
 int print_entry ;
 scalar_t__ rifname ;
 int search (int ,int ) ;
 int set (int,char**) ;
 int usage () ;
 int xo_close_container (char*) ;
 int xo_close_list (char*) ;
 int xo_err (int,char*,scalar_t__) ;
 int xo_errx (int,char*,...) ;
 int xo_finish () ;
 int xo_open_container (char*) ;
 int xo_open_list (char*) ;
 int xo_parse_args (int,char**) ;
 int xo_set_version (int ) ;

int
main(int argc, char *argv[])
{
 int ch, func = 0;
 int rtn = 0;
 int aflag = 0;

 argc = xo_parse_args(argc, argv);
 if (argc < 0)
  exit(1);

 while ((ch = getopt(argc, argv, "andfsSi:")) != -1)
  switch(ch) {
  case 'a':
   aflag = 1;
   break;
  case 'd':
   SETFUNC(132);
   break;
  case 'n':
   nflag = 1;
   break;
  case 'S':
   SETFUNC(129);
   break;
  case 's':
   SETFUNC(128);
   break;
  case 'f' :
   SETFUNC(131);
   break;
  case 'i':
   rifname = optarg;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (!func)
  func = 130;
 if (rifname) {
  if (func != 130 && !(func == 132 && aflag))
   xo_errx(1, "-i not applicable to this operation");
  if (if_nametoindex(rifname) == 0) {
   if (errno == ENXIO)
    xo_errx(1, "interface %s does not exist",
        rifname);
   else
    xo_err(1, "if_nametoindex(%s)", rifname);
  }
 }
 switch (func) {
 case 130:
  if (aflag) {
   if (argc != 0)
    usage();

   xo_set_version(ARP_XO_VERSION);
   xo_open_container("arp");
   xo_open_list("arp-cache");

   search(0, print_entry);

   xo_close_list("arp-cache");
   xo_close_container("arp");
   xo_finish();
  } else {
   if (argc != 1)
    usage();
   rtn = get(argv[0]);
  }
  break;
 case 128:
 case 129:
  if (argc < 2 || argc > 6)
   usage();
  if (func == 129)
   (void)delete(argv[0]);
  rtn = set(argc, argv) ? 1 : 0;
  break;
 case 132:
  if (aflag) {
   if (argc != 0)
    usage();
   search(0, nuke_entry);
  } else {
   if (argc != 1)
    usage();
   rtn = delete(argv[0]);
  }
  break;
 case 131:
  if (argc != 1)
   usage();
  rtn = file(argv[0]);
  break;
 }

 if (ifnameindex != ((void*)0))
  if_freenameindex(ifnameindex);

 return (rtn);
}
