
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stae ;


 char EOS ;
 int FORMATTYPE ;
 int INITSTACKMAX ;
 int MAXOUT ;
 int SIGINT ;
 scalar_t__ SIG_IGN ;
 int STACKMAX ;
 scalar_t__ active ;
 int addtoincludepath (char*) ;
 int * bbase ;
 int bp ;
 int buf ;
 int bufbase ;
 int dodefine (char*,char*) ;
 int err (int,char*,char*) ;
 int error_warns ;
 int exit_code ;
 int fatal_warns ;
 int fclose (int *) ;
 int * fopen_trypath (scalar_t__,char*) ;
 scalar_t__ fp ;
 int getdiv (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ilevel ;
 scalar_t__ infile ;
 int init_macros () ;
 int initkwds () ;
 int initspaces () ;
 int * m4wraps ;
 int macro () ;
 int macro_popdef (char*) ;
 int mark_traced (char*,int) ;
 int maxout ;
 int mimic_gnu ;
 int mstack ;
 scalar_t__ onintr ;
 char* optarg ;
 scalar_t__ optind ;
 int ** outfile ;
 int pbstr (int ) ;
 int prefix_builtins ;
 int release_input (scalar_t__) ;
 int resizedivs (int ) ;
 int set_input (scalar_t__,int ,char*) ;
 int set_trace_flags (char*) ;
 int setup_builtin (char*,int ) ;
 scalar_t__ signal (int ,scalar_t__) ;
 int sp ;
 int sstack ;
 int stdin ;
 scalar_t__ stdout ;
 int synch_lines ;
 int trace_file (char*) ;
 int usage () ;
 int wrapindex ;
 int xalloc (int ,int *) ;
 int xreallocarray (int *,int ,int,int *) ;

int
main(int argc, char *argv[])
{
 int c;
 int n;
 char *p;

 if (signal(SIGINT, SIG_IGN) != SIG_IGN)
  signal(SIGINT, onintr);

 init_macros();
 initspaces();
 STACKMAX = INITSTACKMAX;

 mstack = xreallocarray(((void*)0), STACKMAX, sizeof(stae), ((void*)0));
 sstack = xalloc(STACKMAX, ((void*)0));

 maxout = 0;
 outfile = ((void*)0);
 resizedivs(MAXOUT);

 while ((c = getopt(argc, argv, "gst:d:D:EU:o:I:P")) != -1)
  switch(c) {

  case 'D':
   for (p = optarg; *p; p++)
    if (*p == '=')
     break;
   if (*p)
    *p++ = EOS;
   dodefine(optarg, p);
   break;
  case 'E':
   if (error_warns == 0)
    error_warns = 1;
   else
    fatal_warns = 1;
   break;
  case 'I':
   addtoincludepath(optarg);
   break;
  case 'P':
   prefix_builtins = 1;
   break;
  case 'U':
   macro_popdef(optarg);
   break;
  case 'g':
   mimic_gnu = 1;
   break;
  case 'd':
   set_trace_flags(optarg);
   break;
  case 's':
   synch_lines = 1;
   break;
  case 't':
   mark_traced(optarg, 1);
   break;
  case 'o':
   trace_file(optarg);
                        break;
  case '?':
   usage();
  }

        argc -= optind;
        argv += optind;

 initkwds();
 if (mimic_gnu)
  setup_builtin("format", FORMATTYPE);

 active = stdout;
 bbase[0] = bufbase;
        if (!argc) {
  sp = -1;
  fp = 0;
  set_input(infile+0, stdin, "stdin");

  macro();
 } else
  for (; argc--; ++argv) {
   p = *argv;
   if (p[0] == '-' && p[1] == EOS)
    set_input(infile, stdin, "stdin");
   else if (fopen_trypath(infile, p) == ((void*)0))
    err(1, "%s", p);
   sp = -1;
   fp = 0;
   macro();
   release_input(infile);
  }

 if (wrapindex) {
  int i;

  ilevel = 0;
  bufbase = bp = buf;
  if (mimic_gnu) {
   while (wrapindex != 0) {
    for (i = 0; i < wrapindex; i++)
     pbstr(m4wraps[i]);
    wrapindex =0;
    macro();
   }
  } else {
   for (i = 0; i < wrapindex; i++) {
    pbstr(m4wraps[i]);
    macro();
   }
  }
 }

 if (active != stdout)
  active = stdout;
 for (n = 1; n < maxout; n++)
  if (outfile[n] != ((void*)0))
   getdiv(n);

 if (outfile[0] != ((void*)0)) {
  (void) fclose(outfile[0]);
 }

 return exit_code;
}
