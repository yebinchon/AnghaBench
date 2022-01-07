
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riprt {int rrt_flags; scalar_t__ rrt_index; } ;
struct ifc {scalar_t__ ifc_index; } ;


 int RTF_BLACKHOLE ;
 int RTF_REJECT ;
 int RTF_STATIC ;
 scalar_t__ Sflag ;
 scalar_t__ hflag ;
 scalar_t__ sflag ;

__attribute__((used)) static int
tobeadv(struct riprt *rrt, struct ifc *ifcp)
{


 if (rrt->rrt_flags & RTF_STATIC) {

  if (rrt->rrt_flags & (RTF_REJECT | RTF_BLACKHOLE))
   return 0;

  if (Sflag)
   return 1;
  if (sflag && rrt->rrt_index != ifcp->ifc_index)
   return 1;
  return 0;
 }

 if (hflag == 0 && rrt->rrt_index == ifcp->ifc_index)
  return 0;
 return 1;
}
