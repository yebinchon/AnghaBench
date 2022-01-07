
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsrvcache {int rc_flag; int rc_xid; } ;
struct mtx {int dummy; } ;
struct TYPE_2__ {struct mtx mtx; } ;


 int RC_UDP ;
 size_t nfsrc_hash (int ) ;
 struct mtx nfsrc_udpmtx ;
 TYPE_1__* nfsrchash_table ;

__attribute__((used)) static __inline struct mtx *
nfsrc_cachemutex(struct nfsrvcache *rp)
{

 if ((rp->rc_flag & RC_UDP) != 0)
  return (&nfsrc_udpmtx);
 return (&nfsrchash_table[nfsrc_hash(rp->rc_xid)].mtx);
}
