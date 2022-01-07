
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
typedef int buf ;


 int E2BIG ;
 int ENOMEM ;
 scalar_t__ ISMAGICNO (char*) ;
 int SBUF_AUTOEXTEND ;
 char* _PATH_BSHELL ;
 int _SC_ARG_MAX ;
 int err (int,char*) ;
 int errc (int,int ,char*) ;
 int errx (int,char*,...) ;
 scalar_t__ exec_shell (char*,char*,char*) ;
 int exit (int) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 char* malloc (size_t) ;
 char* optarg ;
 scalar_t__ optind ;
 int optopt ;
 int printf (char*,char*) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_clear (struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 long sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new (int *,int *,int,int ) ;
 int sbuf_putc (struct sbuf*,char) ;
 int snprintf (char*,int,char*,int,int) ;
 char* strdup (char*) ;
 int strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char*,size_t) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 long sysconf (int ) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct sbuf *cmdbuf;
 long arg_max;
 int ch, debug, i, magic, n, nargs, rval;
 size_t cmdsize;
 char buf[4];
 char *cmd, *name, *p, *shell, *slashp, *tmpshell;

 debug = 0;
 magic = '%';
 nargs = -1;
 while ((ch = getopt(argc, argv, "a:d0123456789")) != -1)
  switch (ch) {
  case 'a':
   if (optarg[0] == '\0' || optarg[1] != '\0')
    errx(1,
        "illegal magic character specification");
   magic = optarg[0];
   break;
  case 'd':
   debug = 1;
   break;
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   if (nargs != -1)
    errx(1,
        "only one -# argument may be specified");
   nargs = optopt - '0';
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 2)
  usage();






 for (n = 0, p = argv[0]; *p != '\0'; ++p)
  if (ISMAGICNO(p)) {
   ++p;
   if (p[0] - '0' > n)
    n = p[0] - '0';
  }
 shell = name = ((void*)0);
 tmpshell = getenv("SHELL");
 shell = (tmpshell != ((void*)0)) ? strdup(tmpshell) : strdup(_PATH_BSHELL);
 if (shell == ((void*)0))
  err(1, "strdup() failed");
 slashp = strrchr(shell, '/');
 name = (slashp != ((void*)0)) ? slashp + 1 : shell;
 if (n == 0) {
  cmdsize = strlen(argv[0]) + 9 * (sizeof(" %1") - 1) + 1;
  if ((cmd = malloc(cmdsize)) == ((void*)0))
   err(1, ((void*)0));
  strlcpy(cmd, argv[0], cmdsize);


  if (nargs == -1)
   nargs = 1;

  for (i = 1; i <= nargs; i++) {
   snprintf(buf, sizeof(buf), " %c%d", magic, i);
   strlcat(cmd, buf, cmdsize);
  }





  if (nargs == 0)
   nargs = 1;
 } else {
  if ((cmd = strdup(argv[0])) == ((void*)0))
   err(1, ((void*)0));
  nargs = n;
 }

 cmdbuf = sbuf_new(((void*)0), ((void*)0), 1024, SBUF_AUTOEXTEND);
 if (cmdbuf == ((void*)0))
  err(1, ((void*)0));

 arg_max = sysconf(_SC_ARG_MAX);






 for (rval = 0; argc > nargs; argc -= nargs, argv += nargs) {
  sbuf_clear(cmdbuf);
  sbuf_cat(cmdbuf, "exec ");

  for (p = cmd; *p != '\0'; ++p) {
   if (ISMAGICNO(p)) {
    if (sbuf_cat(cmdbuf, argv[(++p)[0] - '0'])
        == -1)
     errc(1, ENOMEM, "sbuf");
   } else {
    if (sbuf_putc(cmdbuf, *p) == -1)
     errc(1, ENOMEM, "sbuf");
   }
   if (sbuf_len(cmdbuf) > arg_max)
    errc(1, E2BIG, ((void*)0));
  }


  sbuf_finish(cmdbuf);


  if (debug)
   (void)printf("%s\n", sbuf_data(cmdbuf));
  else
   if (exec_shell(sbuf_data(cmdbuf), shell, name))
    rval = 1;
 }

 if (argc != 1)
  errx(1, "expecting additional argument%s after \"%s\"",
      (nargs - argc) ? "s" : "", argv[argc - 1]);
 free(cmd);
 sbuf_delete(cmdbuf);
 free(shell);
 exit(rval);
}
