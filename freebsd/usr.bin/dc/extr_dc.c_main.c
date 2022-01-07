
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAPH_READ ;
 char* DC_VER ;
 int O_RDONLY ;
 int _IOLBF ;
 char* __progname ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 scalar_t__ caph_limit_stream (int,int ) ;
 int err (int,char*,...) ;
 int eval () ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int init_bmachine (int) ;
 int long_options ;
 int open (char*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int procfd (int,char*) ;
 int reset_bmachine (int *) ;
 int setvbuf (int ,int *,int ,int ) ;
 int src ;
 int src_setstream (int *,int ) ;
 int src_setstring (int *,char*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int usage () ;

int
main(int argc, char *argv[])
{
 int ch, fd;
 bool extended_regs = 0, preproc_done = 0;


 while ((ch = getopt_long(argc, argv, "e:f:hVx", long_options, ((void*)0))) != -1) {
  switch (ch) {
  case 'e':
   if (!preproc_done)
    init_bmachine(extended_regs);
   src_setstring(&src, optarg);
   reset_bmachine(&src);
   eval();
   preproc_done = 1;
   break;
  case 'f':
   if (!preproc_done)
    init_bmachine(extended_regs);
   fd = open(optarg, O_RDONLY);
   if (fd < 0)
    err(1, "cannot open file %s", optarg);
   procfd(fd, optarg);
   preproc_done = 1;
   break;
  case 'x':
   extended_regs = 1;
   break;
  case 'V':
   fprintf(stderr, "%s (BSD bc) %s\n", __progname, DC_VER);
   exit(0);
   break;
  case '-':
   break;
  case 'h':

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (!preproc_done)
  init_bmachine(extended_regs);
 (void)setvbuf(stdout, ((void*)0), _IOLBF, 0);
 (void)setvbuf(stderr, ((void*)0), _IOLBF, 0);

 if (argc > 1)
  usage();
 if (argc == 1) {
  fd = open(argv[0], O_RDONLY);
  if (fd < 0)
   err(1, "cannot open file %s", argv[0]);

  if (caph_limit_stream(fd, CAPH_READ) < 0 ||
      caph_limit_stdio() < 0 ||
      caph_enter() < 0)
   err(1, "capsicum");

  procfd(fd, argv[0]);
  preproc_done = 1;
 }
 if (preproc_done)
  return (0);

 if (caph_limit_stdio() < 0 || caph_enter())
  err(1, "capsicum");
 src_setstream(&src, stdin);
 reset_bmachine(&src);
 eval();

 return (0);
}
