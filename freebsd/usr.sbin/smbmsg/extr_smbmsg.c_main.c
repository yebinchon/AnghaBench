
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_UNAVAILABLE ;
 int EX_USAGE ;
 int MAX_I2C_ADDR ;
 int MIN_I2C_ADDR ;
 int O_RDWR ;
 int SMB_MAXBLOCKSIZE ;
 int cflag ;
 int close (int) ;
 char* dev ;
 int do_io () ;
 int err (int ,char*,...) ;
 int errno ;
 int errx (int ,char*,...) ;
 int fd ;
 char* fmt ;
 int getnum (char*) ;
 int getopt (int,char**,char*) ;
 int iflag ;
 int* obuf ;
 int oflag ;
 int open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int oword ;
 int pflag ;
 int probe_i2c () ;
 int slave ;
 int usage () ;
 scalar_t__ wflag ;

int
main(int argc, char **argv)
{
 int i, n, errs = 0;
 int savederrno;

 while ((i = getopt(argc, argv, "F:c:f:i:o:ps:w")) != -1)
  switch (i) {
  case 'F':
   fmt = optarg;
   break;

  case 'c':
   if ((cflag = getnum(optarg)) == -1)
    errx(EX_USAGE, "Invalid number: %s", optarg);
   if (cflag < 0 || cflag >= 256)
    errx(EX_USAGE,
         "CMD out of range: %d",
         cflag);
   break;

  case 'f':
   dev = optarg;
   break;

  case 'i':
   if ((iflag = getnum(optarg)) == -1)
    errx(EX_USAGE, "Invalid number: %s", optarg);
   if (iflag < 0 || iflag > SMB_MAXBLOCKSIZE)
    errx(EX_USAGE,
         "# input bytes out of range: %d",
         iflag);
   break;

  case 'o':
   if ((oflag = getnum(optarg)) == -1)
    errx(EX_USAGE, "Invalid number: %s", optarg);
   if (oflag < 0 || oflag > SMB_MAXBLOCKSIZE)
    errx(EX_USAGE,
         "# output bytes out of range: %d",
         oflag);
   break;

  case 'p':
   pflag = 1;
   break;

  case 's':
   if ((slave = getnum(optarg)) == -1)
    errx(EX_USAGE, "Invalid number: %s", optarg);

   if (slave < MIN_I2C_ADDR || slave >= MAX_I2C_ADDR)
    errx(EX_USAGE,
         "Slave address out of range: %d",
         slave);
   break;

  case 'w':
   wflag = 1;
   break;

  default:
   errs++;
  }
 argc -= optind;
 argv += optind;
 if (errs || (slave != -1 && pflag) || (slave == -1 && !pflag))
  usage();
 if (wflag &&
     !((iflag == 2 && oflag == -1) ||
       (iflag == -1 && oflag == 2) ||
       (iflag == 2 && oflag == 2)))
  errx(EX_USAGE, "Illegal # IO bytes for word IO");
 if (!pflag && iflag == -1 && oflag == -1)
  errx(EX_USAGE, "Nothing to do");
 if (pflag && (cflag != -1 || iflag != -1 || oflag != -1 || wflag != 0))
  usage();
 if (oflag > 0) {
  if (oflag == 2 && wflag) {
   if (argc == 0)
    errx(EX_USAGE, "Too few arguments for -o count");
   if ((n = getnum(*argv)) == -1)
    errx(EX_USAGE, "Invalid number: %s", *argv);
   if (n < 0 || n >= 65535)
    errx(EX_USAGE, "Value out of range: %d", n);
   oword = n;
   argc--;
   argv++;
  } else for (i = 0; i < oflag; i++, argv++, argc--) {
   if (argc == 0)
    errx(EX_USAGE, "Too few arguments for -o count");
   if ((n = getnum(*argv)) == -1)
    errx(EX_USAGE, "Invalid number: %s", *argv);
   if (n < 0 || n >= 256)
    errx(EX_USAGE, "Value out of range: %d", n);
   obuf[i] = n;
  }
 }
 if (argc != 0)
  usage();

 if ((fd = open(dev, O_RDWR)) == -1)
  err(EX_UNAVAILABLE, "Cannot open %s", dev);

 i = 0;
 if (pflag)
  probe_i2c();
 else
  i = do_io();

 savederrno = errno;
 close(fd);
 errno = savederrno;

 if (i == -1)
  err(EX_UNAVAILABLE, "Error performing SMBus IO");
 else if (i == -2)
  errx(EX_USAGE, "Invalid option combination");

 return (0);
}
