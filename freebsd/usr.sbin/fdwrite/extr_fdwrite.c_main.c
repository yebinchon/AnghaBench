
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fd_type {int sectrac; int secsize; int tracks; int heads; int f_inter; int f_gap; int trans; } ;
typedef int FILE ;


 int FD_GTYPE ;
 int O_RDONLY ;
 int O_RDWR ;
 char* _PATH_TTY ;
 int close (int) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int * fopen (char*,char*) ;
 int format_track (int,int,int,int,int ,int ,int,int,int ) ;
 int fprintf (int *,char*,int,char const*) ;
 int getc (int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (int,int ,struct fd_type*) ;
 int isatty (int) ;
 scalar_t__ lseek (int,long,int ) ;
 char* malloc (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int open (char const*,int ) ;
 char const* optarg ;
 int optind ;
 int printf (char*,int,...) ;
 int putc (char,int *) ;
 int read (int,char*,int) ;
 int setbuf (int *,int ) ;
 int * stdout ;
 int usage () ;
 int write (int,char*,int) ;

int
main(int argc, char **argv)
{
    int inputfd = -1, c, fdn = 0, i,j,fd;
    int bpt, verbose=1, nbytes=0, track;
    int interactive = 1;
    const char *device= "/dev/fd0";
    char *trackbuf = 0,*vrfybuf = 0;
    struct fd_type fdt;
    FILE *tty;

    setbuf(stdout,0);
    while((c = getopt(argc, argv, "d:f:vy")) != -1)
     switch(c) {
     case 'd':
      device = optarg;
      break;

     case 'f':
      if (inputfd >= 0)
       close(inputfd);
      inputfd = open(optarg,O_RDONLY);
      if (inputfd < 0)
       err(1, "%s", optarg);
      break;

     case 'v':
      verbose = !verbose;
      break;

     case 'y':
      interactive = 0;
      break;

     case '?': default:
      usage();
     }

    if (inputfd < 0)
 inputfd = 0;

    if (!isatty(1))
 interactive = 0;

    if(optind < argc)
     usage();

    tty = fopen(_PATH_TTY,"r+");
    if(!tty)
     err(1, _PATH_TTY);
    setbuf(tty,0);

    for(j=1;j > 0;) {
        fdn++;
 if (interactive) {
     fprintf(tty,
      "Please insert floppy #%d in drive %s and press return >",
      fdn,device);
     while(1) {
  i = getc(tty);
  if(i == '\n') break;
     }
 }

 if((fd = open(device, O_RDWR)) < 0)
     err(1, "%s", device);

 if(ioctl(fd, FD_GTYPE, &fdt) < 0)
     errx(1, "not a floppy disk: %s", device);

 bpt = fdt.sectrac * (1<<fdt.secsize) * 128;
 if(!trackbuf) {
     trackbuf = malloc(bpt);
     if(!trackbuf) errx(1, "malloc");
 }
 if(!vrfybuf) {
     vrfybuf = malloc(bpt);
     if(!vrfybuf) errx(1, "malloc");
 }

 if(fdn == 1) {
     if(verbose) {
  printf("Format: %d cylinders, %d heads, %d sectors, %d bytes = %dkb\n",
  fdt.tracks,fdt.heads,fdt.sectrac,(1<<fdt.secsize) * 128,
  fdt.tracks*bpt*fdt.heads/1024);

     }
     memset(trackbuf,0,bpt);
     for(j=0;inputfd >= 0 && j<bpt;j+=i) {
  if(!(i = read(inputfd,trackbuf+j,bpt-j))) {
      close(inputfd);
      inputfd = -1;
      break;
  }
  nbytes += i;
     }
 }
 for (track = 0; track < fdt.tracks * fdt.heads; track++) {
     if(verbose) printf("\r%3d ",fdt.tracks * fdt.heads-track);
     if(verbose) putc((j ? 'I':'Z'),stdout);
     format_track(fd, track / fdt.heads, fdt.sectrac, track % fdt.heads,
      fdt.trans, fdt.f_gap, fdt.secsize, 0xe6,
      fdt.f_inter);
     if(verbose) putc('F',stdout);

     if (lseek (fd, (long) track*bpt, 0) < 0) err(1, "lseek");
     if (write (fd, trackbuf, bpt) != bpt) err(1, "write");
     if(verbose) putc('W',stdout);

     if (lseek (fd, (long) track*bpt, 0) < 0) err(1, "lseek");
     if (read (fd, vrfybuf, bpt) != bpt) err(1, "read");
     if(verbose) putc('R',stdout);

     if (memcmp(trackbuf,vrfybuf,bpt)) err(1, "compare");
     if(verbose) putc('C',stdout);

     memset(trackbuf,0,bpt);
     for(j=0;inputfd >= 0 && j<bpt;j+=i) {
  if(!(i = read(inputfd,trackbuf+j,bpt-j))) {
      close(inputfd);
      inputfd = -1;
      break;
  }
  nbytes += i;
     }
 }
 close(fd);
 putc('\r',stdout);
    }
    if(verbose)
 printf("%d bytes on %d flopp%s\n",nbytes,fdn,fdn==1?"y":"ies");
    exit(0);
}
