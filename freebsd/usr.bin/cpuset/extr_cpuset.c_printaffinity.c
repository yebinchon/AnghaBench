
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;
typedef int mask ;
typedef int intmax_t ;
typedef int domainset_t ;
typedef int domain ;
typedef int cpuset_t ;


 int CPU_SETSIZE ;
 int DOMAINSET_SETSIZE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 scalar_t__ cpuset_getaffinity (size_t,size_t,scalar_t__,int,int *) ;
 scalar_t__ cpuset_getdomain (size_t,size_t,scalar_t__,int,int *,int*) ;
 scalar_t__ dflag ;
 int err (int ,char*) ;
 int exit (int ) ;
 scalar_t__ id ;
 size_t level ;
 int * levelnames ;
 int * policynames ;
 int printf (char*,char*,int ,int ,...) ;
 int printset (struct bitset*,int ) ;
 size_t which ;
 char** whichnames ;

__attribute__((used)) static void
printaffinity(void)
{
 domainset_t domain;
 cpuset_t mask;
 int policy;

 if (cpuset_getaffinity(level, which, id, sizeof(mask), &mask) != 0)
  err(EXIT_FAILURE, "getaffinity");
 printf("%s %jd%s mask: ", whichnames[which], (intmax_t)id,
     levelnames[level]);
 printset((struct bitset *)&mask, CPU_SETSIZE);
 if (dflag)
  goto out;
 if (cpuset_getdomain(level, which, id, sizeof(domain), &domain,
     &policy) != 0)
  err(EXIT_FAILURE, "getdomain");
 printf("%s %jd%s domain policy: %s mask: ", whichnames[which],
     (intmax_t)id, levelnames[level], policynames[policy]);
 printset((struct bitset *)&domain, DOMAINSET_SETSIZE);
out:
 exit(EXIT_SUCCESS);
}
