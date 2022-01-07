
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int asprintf (char**,char*,char const*) ;
 scalar_t__ debug ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;
 int vsyslog (int,char const*,int ) ;

void
vlog(int pri, const char *fmt, va_list ap)
{
 char *nfmt;

 if (debug) {

  if (asprintf(&nfmt, "%s\n", fmt) == -1) {
   vfprintf(stderr, fmt, ap);
   fprintf(stderr, "\n");
  } else {
   vfprintf(stderr, nfmt, ap);
   free(nfmt);
  }
  fflush(stderr);
 } else
  vsyslog(pri, fmt, ap);
}
