
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int ans ;


 int STDIN_FILENO ;
 scalar_t__ fflag ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ lflag ;
 int maybe_warnx (char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int stderr ;
 int stdin ;
 int unlink (char const*) ;

__attribute__((used)) static int
check_outfile(const char *outfile)
{
 struct stat sb;
 int ok = 1;

 if (lflag == 0 && stat(outfile, &sb) == 0) {
  if (fflag)
   unlink(outfile);
  else if (isatty(STDIN_FILENO)) {
   char ans[10] = { 'n', '\0' };

   fprintf(stderr, "%s already exists -- do you wish to "
     "overwrite (y or n)? " , outfile);
   (void)fgets(ans, sizeof(ans) - 1, stdin);
   if (ans[0] != 'y' && ans[0] != 'Y') {
    fprintf(stderr, "\tnot overwriting\n");
    ok = 0;
   } else
    unlink(outfile);
  } else {
   maybe_warnx("%s already exists -- skipping", outfile);
   ok = 0;
  }
 }
 return ok;
}
