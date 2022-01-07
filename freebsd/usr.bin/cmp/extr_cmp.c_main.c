
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; int st_mode; } ;
typedef int off_t ;


 int CAPH_IGNORE_EBADF ;
 int CAPH_WRITE ;
 int DIFF_EXIT ;
 scalar_t__ EMLINK ;
 int ERR_EXIT ;
 int O_NOFOLLOW ;
 int O_RDONLY ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_ISREG (int ) ;
 int c_link (char const*,int ,char const*,int ) ;
 int c_regular (int,char const*,int ,scalar_t__,int,char const*,int ,scalar_t__) ;
 int c_special (int,char const*,int ,int,char const*,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_limit_stream (int ,int) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int lflag ;
 int long_opts ;
 int open (char const*,int,int ) ;
 scalar_t__ optind ;
 int printf (char*,char const*,char const*) ;
 int sflag ;
 scalar_t__ strcmp (char const*,char*) ;
 int strtol (char*,int *,int ) ;
 int usage () ;
 int xflag ;
 int zflag ;

int
main(int argc, char *argv[])
{
 struct stat sb1, sb2;
 off_t skip1, skip2;
 int ch, fd1, fd2, oflag, special;
 const char *file1, *file2;

 oflag = O_RDONLY;
 while ((ch = getopt_long(argc, argv, "+hlsxz", long_opts, ((void*)0))) != -1)
  switch (ch) {
  case 'h':
   oflag |= O_NOFOLLOW;
   break;
  case 'l':
   lflag = 1;
   break;
  case 's':
   sflag = 1;
   zflag = 1;
   break;
  case 'x':
   lflag = 1;
   xflag = 1;
   break;
  case 'z':
   zflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 argv += optind;
 argc -= optind;

 if (lflag && sflag)
  errx(ERR_EXIT, "specifying -s with -l or -x is not permitted");

 if (argc < 2 || argc > 4)
  usage();


 if (caph_limit_stream(STDOUT_FILENO, CAPH_WRITE | CAPH_IGNORE_EBADF))
  err(ERR_EXIT, "unable to limit rights on stdout");
 if (caph_limit_stream(STDERR_FILENO, CAPH_WRITE | CAPH_IGNORE_EBADF))
  err(ERR_EXIT, "unable to limit rights on stderr");


 special = 0;
 if (strcmp(file1 = argv[0], "-") == 0) {
  special = 1;
  fd1 = STDIN_FILENO;
  file1 = "stdin";
 } else if ((fd1 = open(file1, oflag, 0)) < 0 && errno != EMLINK) {
  if (!sflag)
   err(ERR_EXIT, "%s", file1);
  else
   exit(ERR_EXIT);
 }
 if (strcmp(file2 = argv[1], "-") == 0) {
  if (special)
   errx(ERR_EXIT,
    "standard input may only be specified once");
  special = 1;
  fd2 = STDIN_FILENO;
  file2 = "stdin";
 } else if ((fd2 = open(file2, oflag, 0)) < 0 && errno != EMLINK) {
  if (!sflag)
   err(ERR_EXIT, "%s", file2);
  else
   exit(ERR_EXIT);
 }

 skip1 = argc > 2 ? strtol(argv[2], ((void*)0), 0) : 0;
 skip2 = argc == 4 ? strtol(argv[3], ((void*)0), 0) : 0;

 if (fd1 == -1) {
  if (fd2 == -1) {
   c_link(file1, skip1, file2, skip2);
   exit(0);
  } else if (!sflag)
   errx(ERR_EXIT, "%s: Not a symbolic link", file2);
  else
   exit(ERR_EXIT);
 } else if (fd2 == -1) {
  if (!sflag)
   errx(ERR_EXIT, "%s: Not a symbolic link", file1);
  else
   exit(ERR_EXIT);
 }


 caph_cache_catpages();

 if (!special) {
  if (fstat(fd1, &sb1)) {
   if (!sflag)
    err(ERR_EXIT, "%s", file1);
   else
    exit(ERR_EXIT);
  }
  if (!S_ISREG(sb1.st_mode))
   special = 1;
  else {
   if (fstat(fd2, &sb2)) {
    if (!sflag)
     err(ERR_EXIT, "%s", file2);
    else
     exit(ERR_EXIT);
   }
   if (!S_ISREG(sb2.st_mode))
    special = 1;
  }
 }

 if (special)
  c_special(fd1, file1, skip1, fd2, file2, skip2);
 else {
  if (zflag && sb1.st_size != sb2.st_size) {
   if (!sflag)
    (void) printf("%s %s differ: size\n",
        file1, file2);
   exit(DIFF_EXIT);
  }
  c_regular(fd1, file1, skip1, sb1.st_size,
      fd2, file2, skip2, sb2.st_size);
 }
 exit(0);
}
