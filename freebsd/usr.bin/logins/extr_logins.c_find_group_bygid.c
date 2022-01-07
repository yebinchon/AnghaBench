
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgroup {scalar_t__ gr_gid; } ;
typedef scalar_t__ gid_t ;


 struct xgroup* grps ;
 unsigned int ngrps ;

__attribute__((used)) static struct xgroup *
find_group_bygid(gid_t gid)
{
 unsigned int i;

 for (i = 0; i < ngrps; ++i)
  if (grps[i].gr_gid == gid)
   return (&grps[i]);
 return (((void*)0));
}
