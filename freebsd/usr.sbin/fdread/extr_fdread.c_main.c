
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EX_OSERR ;
 int O_RDONLY ;
 int doread (int,int *,char const*) ;
 int doreadid (int,unsigned int,unsigned int) ;
 int err (int ,char*,char const*) ;
 unsigned long fillbyte ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 scalar_t__ quiet ;
 scalar_t__ recover ;
 int stderr ;
 int * stdout ;
 unsigned long strtoul (char*,char**,int ) ;
 int usage () ;
 int warnx (char*,unsigned long) ;

int
main(int argc, char **argv)
{
 int c, errs = 0;
 unsigned int numids = 0, trackno = 0;
 const char *fname = 0, *_devname = "/dev/fd0";
 char *cp;
 FILE *of = stdout;
 int fd;
 unsigned long ul;

 while ((c = getopt(argc, argv, "d:f:I:o:qrt:")) != -1)
  switch (c) {
  case 'd':
   _devname = optarg;
   break;

  case 'f':
   ul = strtoul(optarg, &cp, 0);
   if (*cp != '\0') {
    fprintf(stderr,
   "Bad argument %s to -f option; must be numeric\n",
     optarg);
    usage();
   }
   if (ul > 0xff)
    warnx(
   "Warning: fillbyte %#lx too large, truncating\n",
          ul);
   fillbyte = ul & 0xff;
   break;

  case 'I':
   ul = strtoul(optarg, &cp, 0);
   if (*cp != '\0') {
    fprintf(stderr,
   "Bad argument %s to -I option; must be numeric\n",
     optarg);
    usage();
   }
   numids = ul;
   break;

  case 'o':
   fname = optarg;
   break;

  case 'q':
   quiet++;
   break;

  case 'r':
   recover++;
   break;

  case 't':
   ul = strtoul(optarg, &cp, 0);
   if (*cp != '\0') {
    fprintf(stderr,
   "Bad argument %s to -t option; must be numeric\n",
     optarg);
    usage();
   }
   trackno = ul;
   break;

  default:
   errs++;
  }
 argc -= optind;
 argv += optind;

 if (argc != 0 || errs)
  usage();

 if (numids) {
  if (fname || quiet || recover)
   usage();
 } else {
  if (trackno)
   usage();
 }

 if (fname) {
  if ((of = fopen(fname, "w")) == ((void*)0))
   err(EX_OSERR, "cannot create output file %s", fname);
 }

 if ((fd = open(_devname, O_RDONLY)) == -1)
  err(EX_OSERR, "cannot open device %s", _devname);

 return (numids? doreadid(fd, numids, trackno): doread(fd, of, _devname));
}
