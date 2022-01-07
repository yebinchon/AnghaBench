
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nt_name; } ;
struct TYPE_4__ {TYPE_1__ gt_net; int * gt_addrinfo; } ;
struct grouplist {scalar_t__ gr_type; TYPE_2__ gr_ptr; } ;
typedef scalar_t__ caddr_t ;


 scalar_t__ GT_HOST ;
 scalar_t__ GT_NET ;
 int free (scalar_t__) ;
 int freeaddrinfo (int *) ;

__attribute__((used)) static void
free_grp(struct grouplist *grp)
{
 if (grp->gr_type == GT_HOST) {
  if (grp->gr_ptr.gt_addrinfo != ((void*)0))
   freeaddrinfo(grp->gr_ptr.gt_addrinfo);
 } else if (grp->gr_type == GT_NET) {
  if (grp->gr_ptr.gt_net.nt_name)
   free(grp->gr_ptr.gt_net.nt_name);
 }
 free((caddr_t)grp);
}
