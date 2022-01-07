
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISDIR (int ) ;
 int die (char*,char const*) ;
 int error (char*,...) ;
 int error_errno (char*,char const*) ;
 int git_mailsplit_usage ;
 int keep_cr ;
 int mboxrd ;
 int printf (char*,int) ;
 int split_maildir (char const*,char const*,int,int) ;
 int split_mbox (char const*,char const*,int,int,int) ;
 int stat (char const*,struct stat*) ;
 int strcmp (char const*,char*) ;
 int strtol (char const*,int *,int) ;
 int usage (int ) ;

int cmd_mailsplit(int argc, const char **argv, const char *prefix)
{
 int nr = 0, nr_prec = 4, num = 0;
 int allow_bare = 0;
 const char *dir = ((void*)0);
 const char **argp;
 static const char *stdin_only[] = { "-", ((void*)0) };

 for (argp = argv+1; *argp; argp++) {
  const char *arg = *argp;

  if (arg[0] != '-')
   break;

  if ( arg[1] == 'd' ) {
   nr_prec = strtol(arg+2, ((void*)0), 10);
   if (nr_prec < 3 || 10 <= nr_prec)
    usage(git_mailsplit_usage);
   continue;
  } else if ( arg[1] == 'f' ) {
   nr = strtol(arg+2, ((void*)0), 10);
  } else if ( arg[1] == 'h' ) {
   usage(git_mailsplit_usage);
  } else if ( arg[1] == 'b' && !arg[2] ) {
   allow_bare = 1;
  } else if (!strcmp(arg, "--keep-cr")) {
   keep_cr = 1;
  } else if ( arg[1] == 'o' && arg[2] ) {
   dir = arg+2;
  } else if (!strcmp(arg, "--mboxrd")) {
   mboxrd = 1;
  } else if ( arg[1] == '-' && !arg[2] ) {
   argp++;
   break;
  } else {
   die("unknown option: %s", arg);
  }
 }

 if ( !dir ) {


  switch (argc - (argp-argv)) {
  case 1:
   dir = argp[0];
   argp = stdin_only;
   break;
  case 2:
   stdin_only[0] = argp[0];
   dir = argp[1];
   argp = stdin_only;
   break;
  default:
   usage(git_mailsplit_usage);
  }
 } else {

  if ( !*argp )
   argp = stdin_only;
 }

 while (*argp) {
  const char *arg = *argp++;
  struct stat argstat;
  int ret = 0;

  if (arg[0] == '-' && arg[1] == 0) {
   ret = split_mbox(arg, dir, allow_bare, nr_prec, nr);
   if (ret < 0) {
    error("cannot split patches from stdin");
    return 1;
   }
   num += (ret - nr);
   nr = ret;
   continue;
  }

  if (stat(arg, &argstat) == -1) {
   error_errno("cannot stat %s", arg);
   return 1;
  }

  if (S_ISDIR(argstat.st_mode))
   ret = split_maildir(arg, dir, nr_prec, nr);
  else
   ret = split_mbox(arg, dir, allow_bare, nr_prec, nr);

  if (ret < 0) {
   error("cannot split patches from %s", arg);
   return 1;
  }
  num += (ret - nr);
  nr = ret;
 }

 printf("%d\n", num);

 return 0;
}
