
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfscldeleghead {int dummy; } ;
struct nfscldeleg {int dummy; } ;
struct TYPE_2__ {int cldelegates; } ;


 int LIST_REMOVE (struct nfscldeleg*,int ) ;
 int M_NFSCLDELEG ;
 int TAILQ_REMOVE (struct nfscldeleghead*,struct nfscldeleg*,int ) ;
 int free (struct nfscldeleg*,int ) ;
 int nfscl_delegcnt ;
 int nfsdl_hash ;
 int nfsdl_list ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static void
nfscl_freedeleg(struct nfscldeleghead *hdp, struct nfscldeleg *dp)
{

 TAILQ_REMOVE(hdp, dp, nfsdl_list);
 LIST_REMOVE(dp, nfsdl_hash);
 free(dp, M_NFSCLDELEG);
 nfsstatsv1.cldelegates--;
 nfscl_delegcnt--;
}
