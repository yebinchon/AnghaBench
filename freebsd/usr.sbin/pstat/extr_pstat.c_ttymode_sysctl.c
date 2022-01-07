
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtty {int dummy; } ;


 scalar_t__ ENOMEM ;
 int err (int,char*) ;
 scalar_t__ errno ;
 char* hdr ;
 struct xtty* malloc (size_t) ;
 int printf (char*,char*) ;
 struct xtty* realloc (struct xtty*,size_t) ;
 int sysctlbyname (char*,struct xtty*,size_t*,int ,int ) ;
 int ttyprt (struct xtty*) ;

__attribute__((used)) static void
ttymode_sysctl(void)
{
 struct xtty *xttys;
 size_t len;
 unsigned int i, n;

 (void)printf("%s", hdr);
 if ((xttys = malloc(len = sizeof(*xttys))) == ((void*)0))
  err(1, "malloc()");
 while (sysctlbyname("kern.ttys", xttys, &len, 0, 0) == -1) {
  if (errno != ENOMEM)
   err(1, "sysctlbyname()");
  len *= 2;
  if ((xttys = realloc(xttys, len)) == ((void*)0))
   err(1, "realloc()");
 }
 n = len / sizeof(*xttys);
 for (i = 0; i < n; i++)
  ttyprt(&xttys[i]);
}
