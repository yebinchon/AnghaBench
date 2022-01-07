
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct igmp_ifsoftc {int igi_gq; int igi_uri; int igi_qri; int igi_qi; int igi_rv; scalar_t__ igi_flags; int igi_version; struct ifnet* igi_ifp; } ;
struct ifnet {int if_xname; } ;


 int CTR2 (int ,char*,struct ifnet*,int ) ;
 int IGMP_LOCK_ASSERT () ;
 int IGMP_MAX_RESPONSE_PACKETS ;
 int IGMP_QI_INIT ;
 int IGMP_QRI_INIT ;
 int IGMP_RV_INIT ;
 int IGMP_URI_INIT ;
 int KTR_IGMPV3 ;
 int LIST_INSERT_HEAD (int *,struct igmp_ifsoftc*,int ) ;
 int M_IGMP ;
 int M_NOWAIT ;
 int M_ZERO ;
 int V_igi_head ;
 int V_igmp_default_version ;
 int igi_link ;
 struct igmp_ifsoftc* malloc (int,int ,int) ;
 int mbufq_init (int *,int ) ;

__attribute__((used)) static struct igmp_ifsoftc *
igi_alloc_locked( struct ifnet *ifp)
{
 struct igmp_ifsoftc *igi;

 IGMP_LOCK_ASSERT();

 igi = malloc(sizeof(struct igmp_ifsoftc), M_IGMP, M_NOWAIT|M_ZERO);
 if (igi == ((void*)0))
  goto out;

 igi->igi_ifp = ifp;
 igi->igi_version = V_igmp_default_version;
 igi->igi_flags = 0;
 igi->igi_rv = IGMP_RV_INIT;
 igi->igi_qi = IGMP_QI_INIT;
 igi->igi_qri = IGMP_QRI_INIT;
 igi->igi_uri = IGMP_URI_INIT;
 mbufq_init(&igi->igi_gq, IGMP_MAX_RESPONSE_PACKETS);

 LIST_INSERT_HEAD(&V_igi_head, igi, igi_link);

 CTR2(KTR_IGMPV3, "allocate igmp_ifsoftc for ifp %p(%s)",
      ifp, ifp->if_xname);

out:
 return (igi);
}
