
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mld_ifsoftc {int mli_gq; int mli_uri; int mli_qri; int mli_qi; int mli_rv; scalar_t__ mli_flags; int mli_version; struct ifnet* mli_ifp; } ;
struct ifnet {int dummy; } ;


 int CTR2 (int ,char*,struct ifnet*,int ) ;
 int KTR_MLD ;
 int LIST_INSERT_HEAD (int *,struct mld_ifsoftc*,int ) ;
 int MLD_LOCK_ASSERT () ;
 int MLD_MAX_RESPONSE_PACKETS ;
 int MLD_QI_INIT ;
 int MLD_QRI_INIT ;
 int MLD_RV_INIT ;
 int MLD_URI_INIT ;
 int MLD_VERSION_2 ;
 int M_MLD ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_mli_head ;
 int if_name (struct ifnet*) ;
 struct mld_ifsoftc* malloc (int,int ,int) ;
 int mbufq_init (int *,int ) ;
 int mli_link ;

__attribute__((used)) static struct mld_ifsoftc *
mli_alloc_locked( struct ifnet *ifp)
{
 struct mld_ifsoftc *mli;

 MLD_LOCK_ASSERT();

 mli = malloc(sizeof(struct mld_ifsoftc), M_MLD, M_NOWAIT|M_ZERO);
 if (mli == ((void*)0))
  goto out;

 mli->mli_ifp = ifp;
 mli->mli_version = MLD_VERSION_2;
 mli->mli_flags = 0;
 mli->mli_rv = MLD_RV_INIT;
 mli->mli_qi = MLD_QI_INIT;
 mli->mli_qri = MLD_QRI_INIT;
 mli->mli_uri = MLD_URI_INIT;
 mbufq_init(&mli->mli_gq, MLD_MAX_RESPONSE_PACKETS);

 LIST_INSERT_HEAD(&V_mli_head, mli, mli_link);

 CTR2(KTR_MLD, "allocate mld_ifsoftc for ifp %p(%s)",
      ifp, if_name(ifp));

out:
 return (mli);
}
