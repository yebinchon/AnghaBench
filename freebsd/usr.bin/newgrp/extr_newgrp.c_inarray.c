
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const gid_t ;



__attribute__((used)) static int
inarray(gid_t gid, const gid_t grps[], int ngrps)
{
 int i;

 for (i = 0; i < ngrps; i++)
  if (grps[i] == gid)
   return (1);
 return (0);
}
