
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int racct_enable ;


 scalar_t__ ENOENT ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static void
enosys(void)
{
 size_t racct_enable_len;
 int error;
 bool racct_enable;

 racct_enable_len = sizeof(racct_enable);
 error = sysctlbyname("kern.racct.enable",
     &racct_enable, &racct_enable_len, ((void*)0), 0);

 if (error != 0) {
  if (errno == ENOENT)
   errx(1, "RACCT/RCTL support not present in kernel; see rctl(8) for details");

  err(1, "sysctlbyname");
 }

 if (!racct_enable)
  errx(1, "RACCT/RCTL present, but disabled; enable using kern.racct.enable=1 tunable");
}
