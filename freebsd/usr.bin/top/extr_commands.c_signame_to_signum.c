
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (int ,char const*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 int sys_nsig ;
 int * sys_signame ;

__attribute__((used)) static int
signame_to_signum(const char * sig)
{
        int n;

        if (strncasecmp(sig, "SIG", 3) == 0)
                sig += 3;
        for (n = 1; n < sys_nsig; n++) {
            if (!strcasecmp(sys_signame[n], sig))
                return (n);
        }
        return (-1);
}
