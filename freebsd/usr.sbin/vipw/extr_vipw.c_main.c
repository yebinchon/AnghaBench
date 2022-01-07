
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int err (int,char*) ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int fflush (int ) ;
 char* fgetln (int ,size_t*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*) ;
 int pw_edit (int ) ;
 int pw_fini () ;
 int pw_init (char const*,int *) ;
 int pw_lock () ;
 scalar_t__ pw_mkdb (int *) ;
 int pw_tmp (int) ;
 int stdin ;
 int stdout ;
 int umask (int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 const char *passwd_dir = ((void*)0);
 int ch, pfd, tfd;
 char *line;
 size_t len;

 while ((ch = getopt(argc, argv, "d:")) != -1)
  switch (ch) {
  case 'd':
   passwd_dir = optarg;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;

 if (argc != 0)
  usage();

 if (pw_init(passwd_dir, ((void*)0)) == -1)
  err(1, "pw_init()");
 if ((pfd = pw_lock()) == -1) {
  pw_fini();
  err(1, "pw_lock()");
 }
 if ((tfd = pw_tmp(pfd)) == -1) {
  pw_fini();
  err(1, "pw_tmp()");
 }
 (void)close(tfd);

 (void)umask(077);

 for (;;) {
  switch (pw_edit(0)) {
  case -1:
   pw_fini();
   err(1, "pw_edit()");
  case 0:
   pw_fini();
   errx(0, "no changes made");
  default:
   break;
  }
  if (pw_mkdb(((void*)0)) == 0) {
   pw_fini();
   errx(0, "password list updated");
  }
  printf("re-edit the password file? ");
  fflush(stdout);
  if ((line = fgetln(stdin, &len)) == ((void*)0)) {
   pw_fini();
   err(1, "fgetln()");
  }
  if (len > 0 && (*line == 'N' || *line == 'n'))
   break;
 }
 pw_fini();
 exit(0);
}
