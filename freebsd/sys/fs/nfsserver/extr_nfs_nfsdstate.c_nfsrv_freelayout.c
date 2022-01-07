
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfslayouthead {int dummy; } ;
struct nfslayout {int dummy; } ;


 int M_NFSDSTATE ;
 int NFSD_DEBUG (int,char*,struct nfslayout*) ;
 int TAILQ_REMOVE (struct nfslayouthead*,struct nfslayout*,int ) ;
 int atomic_add_int (int *,int) ;
 int free (struct nfslayout*,int ) ;
 int lay_list ;
 int nfsrv_layoutcnt ;

__attribute__((used)) static void
nfsrv_freelayout(struct nfslayouthead *lhp, struct nfslayout *lyp)
{

 NFSD_DEBUG(4, "Freelayout=%p\n", lyp);
 atomic_add_int(&nfsrv_layoutcnt, -1);
 TAILQ_REMOVE(lhp, lyp, lay_list);
 free(lyp, M_NFSDSTATE);
}
