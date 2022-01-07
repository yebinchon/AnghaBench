
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct neglist {int nl_lock; int nl_list; } ;
struct namecache {int nc_flag; } ;
struct TYPE_2__ {int nl_lock; int nl_list; } ;


 int MPASS (int) ;
 int NCF_HOTNEGATIVE ;
 int NCF_NEGATIVE ;
 struct neglist* NCP2NEGLIST (struct namecache*) ;
 int TAILQ_INSERT_TAIL (int *,struct namecache*,int ) ;
 int TAILQ_REMOVE (int *,struct namecache*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nc_dst ;
 TYPE_1__ ncneg_hot ;
 int numhotneg ;

__attribute__((used)) static void
cache_negative_hit(struct namecache *ncp)
{
 struct neglist *neglist;

 MPASS(ncp->nc_flag & NCF_NEGATIVE);
 if (ncp->nc_flag & NCF_HOTNEGATIVE)
  return;
 neglist = NCP2NEGLIST(ncp);
 mtx_lock(&ncneg_hot.nl_lock);
 mtx_lock(&neglist->nl_lock);
 if (!(ncp->nc_flag & NCF_HOTNEGATIVE)) {
  numhotneg++;
  TAILQ_REMOVE(&neglist->nl_list, ncp, nc_dst);
  TAILQ_INSERT_TAIL(&ncneg_hot.nl_list, ncp, nc_dst);
  ncp->nc_flag |= NCF_HOTNEGATIVE;
 }
 mtx_unlock(&neglist->nl_lock);
 mtx_unlock(&ncneg_hot.nl_lock);
}
