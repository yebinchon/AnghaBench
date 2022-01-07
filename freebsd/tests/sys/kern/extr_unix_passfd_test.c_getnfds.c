
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;


 int ATF_REQUIRE_MSG (int,char*) ;
 int CTL_KERN ;
 int KERN_PROC ;
 int KERN_PROC_NFDS ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
getnfds(void)
{
 size_t len;
 int mib[4], n, rc;

 len = sizeof(n);
 mib[0] = CTL_KERN;
 mib[1] = KERN_PROC;
 mib[2] = KERN_PROC_NFDS;
 mib[3] = 0;

 rc = sysctl(mib, 4, &n, &len, ((void*)0), 0);
 ATF_REQUIRE_MSG(rc != -1, "sysctl(KERN_PROC_NFDS) failed");
 return (n);
}
