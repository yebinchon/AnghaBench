
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int CSTAT (int,int ) ;
 int RLIMIT_NOFILE ;
 int errno ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int
fdlimit_set(void *arg)
{
 struct rlimit rlim;
 int max;

 max = (intptr_t)arg;
 if (getrlimit(RLIMIT_NOFILE, &rlim) < 0)
  return (CSTAT(3, errno));
 rlim.rlim_cur = max;
 if (setrlimit(RLIMIT_NOFILE, &rlim) < 0)
  return (CSTAT(4, errno));
 return (0);
}
