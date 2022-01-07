
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct hostlist {int ht_flag; struct hostlist* ht_next; struct grouplist* ht_grp; } ;
struct TYPE_3__ {int nt_mask; int nt_net; } ;
struct TYPE_4__ {TYPE_1__ gt_net; struct addrinfo* gt_addrinfo; } ;
struct grouplist {int gr_type; int gr_numsecflavors; int* gr_secflavors; TYPE_2__ gr_ptr; } ;
struct dirlist {int dp_flag; struct hostlist* dp_hosts; } ;
struct addrinfo {struct sockaddr* ai_addr; struct addrinfo* ai_next; } ;


 int DP_DEFSET ;
 int DP_HOSTSET ;


 int sacmp (struct sockaddr*,struct sockaddr*,struct sockaddr*) ;

__attribute__((used)) static int
chk_host(struct dirlist *dp, struct sockaddr *saddr, int *defsetp,
 int *hostsetp, int *numsecflavors, int **secflavorsp)
{
 struct hostlist *hp;
 struct grouplist *grp;
 struct addrinfo *ai;

 if (dp) {
  if (dp->dp_flag & DP_DEFSET)
   *defsetp = dp->dp_flag;
  hp = dp->dp_hosts;
  while (hp) {
   grp = hp->ht_grp;
   switch (grp->gr_type) {
   case 129:
    ai = grp->gr_ptr.gt_addrinfo;
    for (; ai; ai = ai->ai_next) {
     if (!sacmp(ai->ai_addr, saddr, ((void*)0))) {
      *hostsetp =
          (hp->ht_flag | DP_HOSTSET);
      if (numsecflavors != ((void*)0)) {
       *numsecflavors =
           grp->gr_numsecflavors;
       *secflavorsp =
           grp->gr_secflavors;
      }
      return (1);
     }
    }
    break;
   case 128:
    if (!sacmp(saddr, (struct sockaddr *)
        &grp->gr_ptr.gt_net.nt_net,
        (struct sockaddr *)
        &grp->gr_ptr.gt_net.nt_mask)) {
     *hostsetp = (hp->ht_flag | DP_HOSTSET);
     if (numsecflavors != ((void*)0)) {
      *numsecflavors =
          grp->gr_numsecflavors;
      *secflavorsp =
          grp->gr_secflavors;
     }
     return (1);
    }
    break;
   }
   hp = hp->ht_next;
  }
 }
 return (0);
}
