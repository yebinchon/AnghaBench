
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 int access (char const*,int ) ;
 int asprintf (char**,char*,int ,char const*) ;
 int dir ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int stderr ;
 scalar_t__ verbose ;

__attribute__((used)) static int
check_file(const char *keym)
{
 int status = 0;

 if (access(keym, R_OK) == -1) {
  char *fn;
  asprintf(&fn, "%s/%s", dir, keym);
  if (access(fn, R_OK) == -1) {
   if (verbose)
    fprintf(stderr, "%s not found!\n", fn);
   status = -1;
  }
  free(fn);
 } else {
  if (verbose)
   fprintf(stderr, "No read permission for %s!\n", keym);
  status = -1;
 }

 return status;
}
