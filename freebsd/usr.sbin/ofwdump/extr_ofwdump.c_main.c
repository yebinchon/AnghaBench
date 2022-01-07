
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OK ;
 int O_RDONLY ;
 int getopt (int,char**,char*) ;
 int ofw_close (int) ;
 int ofw_dump (int,char*,int,int,char*,int,int) ;
 int ofw_open (int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int opt, i, fd;
 int aflag, pflag, rflag, Rflag, Sflag;
 char *Parg;

 aflag = pflag = rflag = Rflag = Sflag = 0;
 Parg = ((void*)0);
 while ((opt = getopt(argc, argv, "-aprP:RS")) != -1) {
  if (opt == '-')
   break;
  switch (opt) {
  case 'a':
   aflag = 1;
   rflag = 1;
   break;
  case 'p':
   if (Parg != ((void*)0))
    usage();
   pflag = 1;
   break;
  case 'r':
   rflag = 1;
   break;
  case 'P':
   if (pflag)
    usage();
   pflag = 1;
   Parg = optarg;
   break;
  case 'R':
   if (Sflag)
    usage();
   Rflag = 1;
   break;
  case 'S':
   if (Rflag)
    usage();
   Sflag = 1;
   break;
  case '?':
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 fd = ofw_open(O_RDONLY);
 if (aflag) {
  if (argc != 0)
   usage();
  ofw_dump(fd, ((void*)0), rflag, pflag, Parg, Rflag, Sflag);
 } else {




  for (i = 0; i < argc; i++)
   ofw_dump(fd, argv[i], rflag, pflag, Parg, Rflag, Sflag);
 }
 ofw_close(fd);
 return (EX_OK);
}
