
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcasecmp (int ,char const*) ;
 int strncasecmp (char const*,char*,int) ;
 int sys_nsig ;
 int * sys_signame ;

__attribute__((used)) static int
str2sig(const char *str)
{
 int i;

 if (!strncasecmp(str, "SIG", 3))
  str += 3;
 for (i = 1; i < sys_nsig; i++) {
                if (!strcasecmp(sys_signame[i], str))
                        return (i);
        }
        return (-1);
}
