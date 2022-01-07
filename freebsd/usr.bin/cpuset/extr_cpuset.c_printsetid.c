
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int intmax_t ;
typedef int cpusetid_t ;


 size_t CPU_LEVEL_CPUSET ;
 size_t CPU_LEVEL_WHICH ;
 scalar_t__ cpuset_getid (size_t,size_t,scalar_t__,int *) ;
 int err (int ,char*) ;
 int errno ;
 scalar_t__ id ;
 size_t level ;
 int * levelnames ;
 int printf (char*,char*,int ,int ,int ) ;
 int sflag ;
 size_t which ;
 char** whichnames ;

__attribute__((used)) static void
printsetid(void)
{
 cpusetid_t setid;




 if (level == CPU_LEVEL_WHICH && !sflag)
  level = CPU_LEVEL_CPUSET;
 if (cpuset_getid(level, which, id, &setid))
  err(errno, "getid");
 printf("%s %jd%s id: %d\n", whichnames[which], (intmax_t)id,
     levelnames[level], setid);
}
