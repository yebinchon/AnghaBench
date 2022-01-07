
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct numa_policy {int policy; int * name; } ;
struct bitset {int dummy; } ;
typedef int rootmask ;
typedef int domainset_t ;


 int CPU_LEVEL_ROOT ;
 int CPU_WHICH_PID ;
 int DOMAINSET_COPY (int *,int *) ;
 int DOMAINSET_SETSIZE ;
 int EXIT_FAILURE ;
 scalar_t__ cpuset_getdomain (int ,int ,int,int,int *,int*) ;
 int err (int ,char*) ;
 int errx (int ,char*,char*) ;
 int parselist (char*,struct bitset*,int ) ;
 struct numa_policy* policies ;
 scalar_t__ strcasecmp (char*,char*) ;
 int strlen (int *) ;
 scalar_t__ strncasecmp (char*,int *,int ) ;

__attribute__((used)) static void
parsedomainlist(char *list, domainset_t *mask, int *policyp)
{
 domainset_t rootmask;
 struct numa_policy *policy;
 char *l;
 int p;




 if (cpuset_getdomain(CPU_LEVEL_ROOT, CPU_WHICH_PID, -1,
     sizeof(rootmask), &rootmask, &p) != 0)
  err(EXIT_FAILURE, "getdomain");

 l = list;
 for (policy = &policies[0]; policy->name != ((void*)0); policy++) {
  if (strncasecmp(l, policy->name, strlen(policy->name)) == 0) {
   p = policy->policy;
   l += strlen(policy->name);
   if (*l != ':' && *l != '\0')
    errx(EXIT_FAILURE, "Malformed list %s", list);
   if (*l == ':')
    l++;
   break;
  }
 }
 *policyp = p;
 if (strcasecmp(l, "all") == 0 || *l == '\0') {
  DOMAINSET_COPY(&rootmask, mask);
  return;
 }
 parselist(l, (struct bitset *)mask, DOMAINSET_SETSIZE);
}
