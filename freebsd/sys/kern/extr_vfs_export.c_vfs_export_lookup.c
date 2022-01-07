
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_family; } ;
struct radix_node_head {int rh; scalar_t__ (* rnh_matchaddr ) (struct sockaddr*,int *) ;} ;
struct netcred {TYPE_1__* netc_rnodes; } ;
struct netexport {struct netcred ne_defexported; struct radix_node_head* ne6; struct radix_node_head* ne4; } ;
struct mount {int mnt_flag; struct netexport* mnt_export; } ;
struct TYPE_2__ {int rn_flags; } ;




 int MNT_DEFEXPORTED ;
 int MNT_EXPORTED ;
 int RADIX_NODE_HEAD_RLOCK (struct radix_node_head*) ;
 int RADIX_NODE_HEAD_RLOCK_TRACKER ;
 int RADIX_NODE_HEAD_RUNLOCK (struct radix_node_head*) ;
 int RNF_ROOT ;
 scalar_t__ stub1 (struct sockaddr*,int *) ;

__attribute__((used)) static struct netcred *
vfs_export_lookup(struct mount *mp, struct sockaddr *nam)
{
 RADIX_NODE_HEAD_RLOCK_TRACKER;
 struct netexport *nep;
 struct netcred *np = ((void*)0);
 struct radix_node_head *rnh;
 struct sockaddr *saddr;

 nep = mp->mnt_export;
 if (nep == ((void*)0))
  return (((void*)0));
 if ((mp->mnt_flag & MNT_EXPORTED) == 0)
  return (((void*)0));




 if (nam != ((void*)0)) {
  saddr = nam;
  rnh = ((void*)0);
  switch (saddr->sa_family) {
  case 129:
   rnh = nep->ne4;
   break;
  case 128:
   rnh = nep->ne6;
   break;
  }
  if (rnh != ((void*)0)) {
   RADIX_NODE_HEAD_RLOCK(rnh);
   np = (struct netcred *) (*rnh->rnh_matchaddr)(saddr, &rnh->rh);
   RADIX_NODE_HEAD_RUNLOCK(rnh);
   if (np != ((void*)0) && (np->netc_rnodes->rn_flags & RNF_ROOT) != 0)
    return (((void*)0));
  }
 }




 if (np == ((void*)0) && (mp->mnt_flag & MNT_DEFEXPORTED) != 0)
  return (&nep->ne_defexported);

 return (np);
}
