
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int srcpath ;


 int PATH_MAX ;
 int R_OK ;
 int access (char*,int ) ;
 int bsd ;
 int category_file () ;
 char* category_name () ;
 int dirname (int ) ;
 int errno ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ link (char*,int ) ;
 int mkdir (int ,int) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stderr ;
 int stdout ;
 int * strchr (char*,char) ;
 char* strerror (int ) ;
 int verbose ;

void
copy_category(char *src)
{
 char srcpath[PATH_MAX];
 int rv;

 (void) snprintf(srcpath, sizeof (srcpath), "%s/%s",
     src, category_name());
 rv = access(srcpath, R_OK);
 if ((rv != 0) && (strchr(srcpath, '/') == ((void*)0))) {

  (void) snprintf(srcpath, sizeof (srcpath),
      "/usr/lib/locale/%s/%s", src, category_name());
  rv = access(srcpath, R_OK);
 }

 if (rv != 0) {
  fprintf(stderr,"source locale data unavailable: %s", src);
  return;
 }

 if (verbose > 1) {
  (void) printf("Copying category %s from %s: ",
      category_name(), src);
  (void) fflush(stdout);
 }


 if (!bsd)
  (void) mkdir(dirname(category_file()), 0755);

 if (link(srcpath, category_file()) != 0) {
  fprintf(stderr,"unable to copy locale data: %s",
   strerror(errno));
  return;
 }
 if (verbose > 1) {
  (void) printf("done.\n");
 }
}
