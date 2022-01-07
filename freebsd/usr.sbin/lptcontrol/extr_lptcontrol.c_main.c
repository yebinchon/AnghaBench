
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_DEVICE ;
 int DO_POLL ;
 int IRQ_UNSPECIFIED ;
 int LPT_IRQ ;
 int O_WRONLY ;
 int USE_EXT_MODE ;
 int USE_IRQ ;
 int USE_STD_MODE ;
 int close (int) ;
 int err (int,char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;

int main (int argc, char **argv)
{
 const char *device;
 int fd;
 int irq_status;
 int opt;

 device = DEFAULT_DEVICE;
 irq_status = IRQ_UNSPECIFIED;
 while ((opt = getopt(argc, argv, "d:eips")) != -1)
  switch (opt) {
  case 'd':
   device = optarg;
   break;
  case 'e':
   irq_status = USE_EXT_MODE;
   break;
  case 'i':
   irq_status = USE_IRQ;
   break;
  case 'p':
   irq_status = DO_POLL;
   break;
  case 's':
   irq_status = USE_STD_MODE;
   break;
  case '?':
  default:
   usage();

  }
 argc -= optind;
 argv += optind;

 if (argc == 1) {
  device = argv[0];
  --argc;
 }

 if (irq_status == IRQ_UNSPECIFIED || argc != 0)
  usage();

 if ((fd = open(device, O_WRONLY)) < 0)
  err(1, "open");
 if (ioctl(fd, LPT_IRQ, &irq_status) < 0)
  err(1, "ioctl");
 close(fd);

 return(0);
}
