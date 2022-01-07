
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_req {int dummy; } ;


 int ENOMEM ;
 int SYSCTL_OUT (struct sysctl_req*,char const*,int) ;

int
fail_sysctl_drain_func(void *sysctl_args, const char *buf, int len)
{
 struct sysctl_req *sa;
 int error;

 sa = sysctl_args;

 error = SYSCTL_OUT(sa, buf, len);

 if (error == ENOMEM)
  return (-1);
 else
  return (len);
}
