
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitset {int dummy; } ;
typedef int cpuset_t ;


 int CPU_LEVEL_ROOT ;
 int CPU_SETSIZE ;
 int CPU_WHICH_PID ;
 int EXIT_FAILURE ;
 scalar_t__ cpuset_getaffinity (int ,int ,int,int,int *) ;
 int err (int ,char*) ;
 int parselist (char*,struct bitset*,int ) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static void
parsecpulist(char *list, cpuset_t *mask)
{

 if (strcasecmp(list, "all") == 0) {
  if (cpuset_getaffinity(CPU_LEVEL_ROOT, CPU_WHICH_PID, -1,
      sizeof(*mask), mask) != 0)
   err(EXIT_FAILURE, "getaffinity");
  return;
 }
 parselist(list, (struct bitset *)mask, CPU_SETSIZE);
}
