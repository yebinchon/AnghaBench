
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct usbcap {int bfd; int fd; int bufsize; int rfd; int wfd; int * buffer; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct ifreq {int ifr_name; } ;
struct bpf_version {scalar_t__ bv_major; scalar_t__ bv_minor; } ;
struct bpf_stat {int bs_recv; int bs_drop; } ;
struct bpf_program {int dummy; } ;
typedef int ifr ;
typedef struct ifreq* caddr_t ;


 int AF_LOCAL ;
 int BIOCGBLEN ;
 int BIOCGSTATS ;
 int BIOCSBLEN ;
 int BIOCSETF ;
 int BIOCSETIF ;
 int BIOCSRTIMEOUT ;
 int BIOCVERSION ;
 scalar_t__ BPF_MAJOR_VERSION ;
 scalar_t__ BPF_MINOR_VERSION ;
 int EINVAL ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int EX_SOFTWARE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SIGINT ;
 int SIOCIFCREATE2 ;
 int SIOCIFDESTROY ;
 int SOCK_DGRAM ;
 int S_IRUSR ;
 int S_IWUSR ;
 int USBPF_HDR_LEN ;
 int add_filter (int,int) ;
 char* b_arg ;
 int check_usb_pf_sysctl () ;
 int close (int) ;
 int do_loop (struct usbcap*) ;
 int err (int ,char*,...) ;
 int errno ;
 int errx (int ,char*,...) ;
 int exit (int) ;
 int free_filter (struct bpf_program*) ;
 int getopt (int,char**,char const*) ;
 int handle_sigint ;
 char* i_arg ;
 int if_nametoindex (char*) ;
 int init_rfile (struct usbcap*) ;
 int init_wfile (struct usbcap*) ;
 scalar_t__ ioctl (int,int ,struct ifreq*) ;
 int make_filter (struct bpf_program*,long) ;
 scalar_t__ malloc (int) ;
 int memset (struct ifreq*,int ,int) ;
 void* open (char*,int,...) ;
 char* optarg ;
 int pkt_captured ;
 int printf (char*,...) ;
 char* r_arg ;
 int read_file (struct usbcap*) ;
 int signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 void* strtol (char*,char**,int) ;
 struct usbcap uc ;
 int usage () ;
 int verbose ;
 char* w_arg ;
 int warn (char*) ;

int
main(int argc, char *argv[])
{
 struct timeval tv;
 struct bpf_program total_prog;
 struct bpf_stat us;
 struct bpf_version bv;
 struct usbcap *p = &uc;
 struct ifreq ifr;
 long snapshot = 192;
 uint32_t v;
 int fd;
 int o;
 int filt_unit;
 int filt_ep;
 int s;
 int ifindex;
 const char *optstring;
 char *pp;

 optstring = "b:hi:r:s:vw:f:";
 while ((o = getopt(argc, argv, optstring)) != -1) {
  switch (o) {
  case 'i':
   i_arg = optarg;
   break;
  case 'r':
   r_arg = optarg;
   init_rfile(p);
   break;
  case 's':
   snapshot = strtol(optarg, &pp, 10);
   errno = 0;
   if (pp != ((void*)0) && *pp != 0)
    usage();
   if (snapshot == 0 && errno == EINVAL)
    usage();

   if (snapshot == 0)
    snapshot = -1;
   break;
  case 'b':
   b_arg = optarg;
   break;
  case 'v':
   verbose++;
   break;
  case 'w':
   w_arg = optarg;
   init_wfile(p);
   break;
  case 'f':
   filt_unit = strtol(optarg, &pp, 10);
   filt_ep = -1;
   if (pp != ((void*)0)) {
    if (*pp == '.') {
     filt_ep = strtol(pp + 1, &pp, 10);
     if (pp != ((void*)0) && *pp != 0)
      usage();
    } else if (*pp != 0) {
     usage();
    }
   }
   add_filter(filt_unit, filt_ep);
   break;
  default:
   usage();

  }
 }

 if (b_arg != ((void*)0)) {
  p->bfd = open(b_arg, O_CREAT | O_TRUNC |
      O_WRONLY, S_IRUSR | S_IWUSR);
  if (p->bfd < 0) {
   err(EXIT_FAILURE, "Could not open "
       "'%s' for write", b_arg);
  }
 }





 if (w_arg != ((void*)0) || b_arg != ((void*)0))
  verbose--;

 if (r_arg != ((void*)0)) {
  read_file(p);
  exit(EXIT_SUCCESS);
 }

 check_usb_pf_sysctl();

 p->fd = fd = open("/dev/bpf", O_RDONLY);
 if (p->fd < 0)
  err(EXIT_FAILURE, "Could not open BPF device");

 if (ioctl(fd, BIOCVERSION, (caddr_t)&bv) < 0)
  err(EXIT_FAILURE, "BIOCVERSION ioctl failed");

 if (bv.bv_major != BPF_MAJOR_VERSION ||
     bv.bv_minor < BPF_MINOR_VERSION)
  errx(EXIT_FAILURE, "Kernel BPF filter out of date");


 v = 1U << 16;


 memset(&ifr, 0, sizeof(ifr));


 s = socket(AF_LOCAL, SOCK_DGRAM, 0);
 if (s < 0)
  errx(EXIT_FAILURE, "Could not open a socket");
 ifindex = if_nametoindex(i_arg);
 if (ifindex == 0) {
  (void)strlcpy(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
  if (ioctl(s, SIOCIFCREATE2, &ifr) < 0)
   errx(EXIT_FAILURE, "Invalid bus interface: %s", i_arg);
 }

 for ( ; v >= USBPF_HDR_LEN; v >>= 1) {
  (void)ioctl(fd, BIOCSBLEN, (caddr_t)&v);
  (void)strlcpy(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
  if (ioctl(fd, BIOCSETIF, (caddr_t)&ifr) >= 0)
   break;
 }
 if (v == 0)
  errx(EXIT_FAILURE, "No buffer size worked.");

 if (ioctl(fd, BIOCGBLEN, (caddr_t)&v) < 0)
  err(EXIT_FAILURE, "BIOCGBLEN ioctl failed");

 p->bufsize = v;
 p->buffer = (uint8_t *)malloc(p->bufsize);
 if (p->buffer == ((void*)0))
  errx(EX_SOFTWARE, "Out of memory.");

 make_filter(&total_prog, snapshot);

 if (ioctl(p->fd, BIOCSETF, (caddr_t)&total_prog) < 0)
  err(EXIT_FAILURE, "BIOCSETF ioctl failed");

 free_filter(&total_prog);


 tv.tv_sec = 1;
 tv.tv_usec = 0;
 if (ioctl(p->fd, BIOCSRTIMEOUT, (caddr_t)&tv) < 0)
  err(EXIT_FAILURE, "BIOCSRTIMEOUT ioctl failed");

 (void)signal(SIGINT, handle_sigint);

 do_loop(p);

 if (ioctl(fd, BIOCGSTATS, (caddr_t)&us) < 0)
  err(EXIT_FAILURE, "BIOCGSTATS ioctl failed");


 printf("\n");
 printf("%d packets captured\n", pkt_captured);
 printf("%d packets received by filter\n", us.bs_recv);
 printf("%d packets dropped by kernel\n", us.bs_drop);





 if (ifindex == 0 && if_nametoindex(i_arg) > 0) {
  (void)strlcpy(ifr.ifr_name, i_arg, sizeof(ifr.ifr_name));
  if (ioctl(s, SIOCIFDESTROY, &ifr) < 0)
   warn("SIOCIFDESTROY ioctl failed");
 }
 close(s);

 if (p->fd > 0)
  close(p->fd);
 if (p->rfd > 0)
  close(p->rfd);
 if (p->wfd > 0)
  close(p->wfd);
 if (p->bfd > 0)
  close(p->bfd);

 return (EXIT_SUCCESS);
}
