
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfscllockowner {int nfsl_lock; } ;
struct nfscllock {int dummy; } ;
struct TYPE_2__ {int cllocks; int cllocallocks; } ;


 int LIST_INSERT_AFTER (struct nfscllock*,struct nfscllock*,int ) ;
 int LIST_INSERT_HEAD (int *,struct nfscllock*,int ) ;
 int nfslo_list ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static void
nfscl_insertlock(struct nfscllockowner *lp, struct nfscllock *new_lop,
    struct nfscllock *insert_lop, int local)
{

 if ((struct nfscllockowner *)insert_lop == lp)
  LIST_INSERT_HEAD(&lp->nfsl_lock, new_lop, nfslo_list);
 else
  LIST_INSERT_AFTER(insert_lop, new_lop, nfslo_list);
 if (local)
  nfsstatsv1.cllocallocks++;
 else
  nfsstatsv1.cllocks++;
}
