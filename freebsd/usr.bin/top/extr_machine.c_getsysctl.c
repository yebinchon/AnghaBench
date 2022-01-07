
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TOP_EX_SYS_ERROR ;
 int errno ;
 int fprintf (int ,char*,char const*,...) ;
 int quit (int ) ;
 int stderr ;
 char* strerror (int ) ;
 int sysctlbyname (char const*,void*,size_t*,int *,int ) ;

__attribute__((used)) static void
getsysctl(const char *name, void *ptr, size_t len)
{
 size_t nlen = len;

 if (sysctlbyname(name, ptr, &nlen, ((void*)0), 0) == -1) {
  fprintf(stderr, "top: sysctl(%s...) failed: %s\n", name,
      strerror(errno));
  quit(TOP_EX_SYS_ERROR);
 }
 if (nlen != len) {
  fprintf(stderr, "top: sysctl(%s...) expected %lu, got %lu\n",
      name, (unsigned long)len, (unsigned long)nlen);
  quit(TOP_EX_SYS_ERROR);
 }
}
