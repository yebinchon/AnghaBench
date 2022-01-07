
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;



 scalar_t__ EOF ;



 int INT_MAX ;
 int Iflag ;
 int SIZE_MAX ;
 int STDOUT_FILENO ;


 int WEXITSTATUS (int) ;
 size_t WIDTH ;
 int WIDTH_MIN ;
 int WIFEXITED (int) ;
 char* _PATH_TMP ;
 scalar_t__ asprintf (char**,char*) ;
 int binexec (char*,char*,char*) ;
 char** calloc (int,int) ;
 int close (int) ;
 char* diff_path ;
 int dup2 (int,int ) ;
 int enqueue (char*,char,char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int file1ln ;
 int file2ln ;
 void* fopen (char const*,char*) ;
 int fork () ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 char** help_msg ;
 int istextfile (int *) ;
 int lflag ;
 int line_width ;
 int longopts ;
 char* mktmpcpy (char*) ;
 void* optarg ;
 scalar_t__ optind ;
 int * outfp ;
 scalar_t__ parsecmd (int *,int *,int *) ;
 scalar_t__ pipe (int*) ;
 int printf (char*,char*) ;
 int processq () ;
 char* realloc (char*,int) ;
 int sflag ;
 int sprintf (char*,char*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 size_t strtonum (void*,int ,int ,char const**) ;
 char* tmpdir ;
 scalar_t__ unlink (char*) ;
 int usage () ;
 int waitpid (int ,int*,int ) ;
 int warn (char*,char*) ;
 int width ;
 char* xfgets (int *) ;

int
main(int argc, char **argv)
{
 FILE *diffpipe=((void*)0), *file1, *file2;
 size_t diffargc = 0, wflag = WIDTH;
 int ch, fd[2] = {-1}, status;
 pid_t pid=0;
 const char *outfile = ((void*)0);
 char **diffargv, *diffprog = diff_path, *filename1, *filename2,
      *tmp1, *tmp2, *s1, *s2;
 int i;
 char I_arg[] = "-I";
 char speed_lf[] = "--speed-large-files";
 if (!(diffargv = calloc(argc, sizeof(char **) * 2)))
  err(2, "main");


 diffargv[diffargc++] = diffprog;


 if ( asprintf(&diffargv[diffargc++], "-") < 0 )
  err(2, "main");

 while ((ch = getopt_long(argc, argv, "aBbdEHI:ilo:stWw:",
     longopts, ((void*)0))) != -1) {
  const char *errstr;

  switch (ch) {

  case 132:
  case 131:
  case 129:
  case 128:
  case 'S':
  break;

  case 'a':
  case 'B':
  case 'b':
  case 'd':
  case 'E':
  case 'i':
  case 't':
  case 'W':
   diffargv[1] = realloc(diffargv[1], sizeof(char) * strlen(diffargv[1]) + 2);



   if (ch == 'W')
    sprintf(diffargv[1], "%sw", diffargv[1]);
   else
    sprintf(diffargv[1], "%s%c", diffargv[1], ch);
   break;
  case 'H':
   diffargv[diffargc++] = speed_lf;
   break;
  case 133:
   diffargv[0] = diffprog = optarg;
   break;
  case 'I':
   Iflag = 1;
   diffargv[diffargc++] = I_arg;
   diffargv[diffargc++] = optarg;
   break;
  case 'l':
   lflag = 1;
   break;
  case 'o':
   outfile = optarg;
   break;
  case 's':
   sflag = 1;
   break;
  case 'w':
   wflag = strtonum(optarg, WIDTH_MIN,
       INT_MAX, &errstr);
   if (errstr)
    errx(2, "width is %s: %s", errstr, optarg);
   break;
  case 130:
   for (i = 0; help_msg[i] != ((void*)0); i++)
    printf("%s\n", help_msg[i]);
   exit(0);
   break;
  default:
   usage();
   break;
  }
 }


 if (strcmp(diffargv[1], "-") == 0 ) {
  for ( i = 1; i < argc-1; i++) {
   diffargv[i] = diffargv[i+1];
  }
  diffargv[diffargc-1] = ((void*)0);
  diffargc--;
 }

 argc -= optind;
 argv += optind;

 if (argc != 2)
  usage();

 if (outfile && (outfp = fopen(outfile, "w")) == ((void*)0))
  err(2, "could not open: %s", optarg);

 if ((tmpdir = getenv("TMPDIR")) == ((void*)0) || *tmpdir == '\0')
  tmpdir = _PATH_TMP;

 filename1 = argv[0];
 filename2 = argv[1];
 tmp1 = tmp2 = ((void*)0);

 if (strcmp(filename1, filename2) == 0) {
  if ((tmp1 = mktmpcpy(filename1)))
   filename1 = filename2 = tmp1;

 } else {
  if ((tmp1 = mktmpcpy(filename1)))
   filename1 = tmp1;
  if ((tmp2 = mktmpcpy(filename2)))
   filename2 = tmp2;
 }

 diffargv[diffargc++] = filename1;
 diffargv[diffargc++] = filename2;

 diffargv[diffargc++] = ((void*)0);


 width = (wflag - 3) / 2;

 if (width > (SIZE_MAX - 3) / 2)
  errx(2, "width is too large: %zu", width);
 line_width = width * 2 + 3;

 if (pipe(fd))
  err(2, "pipe");

 switch (pid = fork()) {
 case 0:


  close(fd[0]);
  if (dup2(fd[1], STDOUT_FILENO) == -1)
   err(2, "child could not duplicate descriptor");

  close(fd[1]);
  execvp(diffprog, diffargv);
  err(2, "could not execute diff: %s", diffprog);
  break;
 case -1:
  err(2, "could not fork");
  break;
 }



 close(fd[1]);


 if ((diffpipe = fdopen(fd[0], "r")) == ((void*)0))
  err(2, "could not open diff pipe");

 if ((file1 = fopen(filename1, "r")) == ((void*)0))
  err(2, "could not open %s", filename1);
 if ((file2 = fopen(filename2, "r")) == ((void*)0))
  err(2, "could not open %s", filename2);
 if (!istextfile(file1) || !istextfile(file2)) {

  fclose(file1);
  fclose(file2);
  if (diffpipe != ((void*)0))
   fclose(diffpipe);
  if (tmp1)
   if (unlink(tmp1))
    warn("Error deleting %s.", tmp1);
  if (tmp2)
   if (unlink(tmp2))
    warn("Error deleting %s.", tmp2);
  free(tmp1);
  free(tmp2);
  binexec(diffprog, filename1, filename2);
 }

 file1ln = file2ln = 1;


 while (parsecmd(diffpipe, file1, file2) != EOF)
  ;
 fclose(diffpipe);


 if (waitpid(pid, &status, 0) == -1 || !WIFEXITED(status) ||
     WEXITSTATUS(status) >= 2)
  err(2, "diff exited abnormally.");


 if (tmp1)
  if (unlink(tmp1))
   warn("Error deleting %s.", tmp1);
 if (tmp2)
  if (unlink(tmp2))
   warn("Error deleting %s.", tmp2);
 free(tmp1);
 free(tmp2);
 filename1 = filename2 = tmp1 = tmp2 = ((void*)0);


 if (lflag)
  while ((s1 = xfgets(file1)))
   enqueue(s1, ' ', ((void*)0));
 else
  for (;;) {
   s1 = xfgets(file1);
   s2 = xfgets(file2);
   if (s1 || s2)
    enqueue(s1, ' ', s2);
   else
    break;
  }
 fclose(file1);
 fclose(file2);

 processq();


 return (WEXITSTATUS(status));
}
