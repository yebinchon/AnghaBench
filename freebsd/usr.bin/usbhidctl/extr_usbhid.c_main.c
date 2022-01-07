
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ report_desc_t ;
typedef int devnam ;


 int O_RDWR ;
 int dumpdata (int,scalar_t__,int) ;
 int dumpitems (scalar_t__) ;
 int err (int,char*,char*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int hexdump ;
 int hid_dispose_report_desc (scalar_t__) ;
 scalar_t__ hid_get_report_desc (int) ;
 int hid_init (char*) ;
 scalar_t__ isdigit (char) ;
 int noname ;
 int open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int parceargs (scalar_t__,int,int,char**) ;
 int printf (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int usage () ;
 int verbose ;
 int wflag ;
 int writedata (int,scalar_t__) ;
 int zflag ;

int
main(int argc, char **argv)
{
 report_desc_t r;
 char *table = 0;
 char devnam[100], *dev = ((void*)0);
 int f;
 int all = 0;
 int ch;
 int repdump = 0;
 int loop = 0;

 while ((ch = getopt(argc, argv, "af:lnrt:vwxz")) != -1) {
  switch(ch) {
  case 'a':
   all++;
   break;
  case 'f':
   dev = optarg;
   break;
  case 'l':
   loop ^= 1;
   break;
  case 'n':
   noname++;
   break;
  case 'r':
   repdump++;
   break;
  case 't':
   table = optarg;
   break;
  case 'v':
   verbose++;
   break;
  case 'w':
   wflag = 1;
   break;
  case 'x':
   hexdump = 1;
   break;
  case 'z':
   zflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (dev == ((void*)0))
  usage();

 if (argc == 0 && !all && !repdump)
  usage();

 if (dev[0] != '/') {
  if (isdigit(dev[0]))
   snprintf(devnam, sizeof(devnam), "/dev/uhid%s", dev);
  else
   snprintf(devnam, sizeof(devnam), "/dev/%s", dev);
  dev = devnam;
 }

 hid_init(table);

 f = open(dev, O_RDWR);
 if (f < 0)
  err(1, "%s", dev);

 r = hid_get_report_desc(f);
 if (r == 0)
  errx(1, "USB_GET_REPORT_DESC");

 if (repdump) {
  printf("Report descriptor:\n");
  dumpitems(r);
 }
 if (argc != 0 || all) {
  parceargs(r, all, argc, argv);
  if (wflag)
   writedata(f, r);
  else
   dumpdata(f, r, loop);
 }

 hid_dispose_report_desc(r);
 exit(0);
}
