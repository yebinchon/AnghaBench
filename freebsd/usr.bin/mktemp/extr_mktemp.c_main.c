
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _PATH_TMP ;
 int asprintf (char**,char*,char*,char const*) ;
 int close (int) ;
 int errx (int,char*) ;
 int free (char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int * mkdtemp (char*) ;
 int mkstemp (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 int rmdir (char*) ;
 char* strdup (char*) ;
 int unlink (char*) ;
 int usage () ;
 int warn (char*,char*) ;

int
main(int argc, char **argv)
{
 int c, fd, ret;
 char *tmpdir;
 const char *prefix;
 char *name;
 int dflag, qflag, tflag, uflag;

 ret = dflag = qflag = tflag = uflag = 0;
 prefix = "mktemp";
 name = ((void*)0);

 while ((c = getopt(argc, argv, "dqt:u")) != -1)
  switch (c) {
  case 'd':
   dflag++;
   break;

  case 'q':
   qflag++;
   break;

  case 't':
   prefix = optarg;
   tflag++;
   break;

  case 'u':
   uflag++;
   break;

  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (!tflag && argc < 1) {
  tflag = 1;
  prefix = "tmp";
 }

 if (tflag) {
  tmpdir = getenv("TMPDIR");
  if (tmpdir == ((void*)0))
   asprintf(&name, "%s%s.XXXXXXXX", _PATH_TMP, prefix);
  else
   asprintf(&name, "%s/%s.XXXXXXXX", tmpdir, prefix);

  if (name == ((void*)0)) {
   if (qflag)
    return (1);
   else
    errx(1, "cannot generate template");
  }
 }


 while (name != ((void*)0) || argc > 0) {
  if (name == ((void*)0)) {
   name = strdup(argv[0]);
   argv++;
   argc--;
  }

  if (dflag) {
   if (mkdtemp(name) == ((void*)0)) {
    ret = 1;
    if (!qflag)
     warn("mkdtemp failed on %s", name);
   } else {
    printf("%s\n", name);
    if (uflag)
     rmdir(name);
   }
  } else {
   fd = mkstemp(name);
   if (fd < 0) {
    ret = 1;
    if (!qflag)
     warn("mkstemp failed on %s", name);
   } else {
    close(fd);
    if (uflag)
     unlink(name);
    printf("%s\n", name);
   }
  }
  if (name)
   free(name);
  name = ((void*)0);
 }
 return (ret);
}
