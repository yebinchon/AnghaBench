
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOMEM ;
 size_t SD_FACTOR ;
 size_t SD_MARGIN ;
 int SD_MAXMIB ;
 int SD_NTRIES ;
 scalar_t__ errno ;
 int error (char*) ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int sysctl (int*,size_t,char*,size_t*,int *,int ) ;
 int sysctlnametomib (char const*,int*,size_t*) ;

char *
sysctl_dynread(const char *n, size_t *szp)
{
 char *rv = ((void*)0);
 int mib[SD_MAXMIB];
 size_t mibsz = SD_MAXMIB;
 size_t mrg = SD_MARGIN;
 size_t sz;
 int i;


 if (sysctlnametomib(n, mib, &mibsz) == -1) {
  if (errno == ENOMEM) {
   error("XXX: SD_MAXMIB too small, please bump!");
  }
  return ((void*)0);
 }
 for (i = 0; i < SD_NTRIES; i++) {

  if (sysctl(mib, mibsz, ((void*)0), &sz, ((void*)0), 0) == -1)
   break;
  sz += sz * mrg / 100;
  if ((rv = (char *)malloc(sz)) == ((void*)0)) {
   error("Out of memory!");
   return ((void*)0);
  }
  if (sysctl(mib, mibsz, rv, &sz, ((void*)0), 0) == -1) {
   free(rv);
   rv = ((void*)0);
   if (errno == ENOMEM) {
    mrg += mrg * SD_FACTOR / 100;
   } else
    break;
  } else {

   if (szp != ((void*)0))
    *szp = sz;
   break;
  }
 }

 return rv;
}
