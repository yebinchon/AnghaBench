
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int (* kreadfn_t ) (scalar_t__,void*,size_t) ;


 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 scalar_t__ live ;
 int memset (void*,int ,size_t) ;
 int sysctlbyname (char const*,void*,size_t*,void*,size_t) ;
 int xo_warn (char*,char const*) ;

__attribute__((used)) static int
fetch_stats_internal(const char *sysctlname, u_long off, void *stats,
    size_t len, kreadfn_t kreadfn, int zero)
{
 int error;

 if (live) {
  memset(stats, 0, len);
  if (zero)
   error = sysctlbyname(sysctlname, ((void*)0), ((void*)0), stats,
       len);
  else
   error = sysctlbyname(sysctlname, stats, &len, ((void*)0), 0);
  if (error == -1 && errno != ENOENT)
   xo_warn("sysctl %s", sysctlname);
 } else {
  if (off == 0)
   return (1);
  error = kreadfn(off, stats, len);
 }
 return (error);
}
