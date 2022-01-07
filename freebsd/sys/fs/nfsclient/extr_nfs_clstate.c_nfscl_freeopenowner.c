
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsclowner {int dummy; } ;
struct TYPE_2__ {int clopenowners; int cllocalopenowners; } ;


 int LIST_REMOVE (struct nfsclowner*,int ) ;
 int M_NFSCLOWNER ;
 int free (struct nfsclowner*,int ) ;
 int nfsow_list ;
 TYPE_1__ nfsstatsv1 ;

__attribute__((used)) static void
nfscl_freeopenowner(struct nfsclowner *owp, int local)
{

 LIST_REMOVE(owp, nfsow_list);
 free(owp, M_NFSCLOWNER);
 if (local)
  nfsstatsv1.cllocalopenowners--;
 else
  nfsstatsv1.clopenowners--;
}
