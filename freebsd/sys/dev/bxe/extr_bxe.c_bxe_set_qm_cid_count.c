
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int dummy; } ;


 int BXE_L2_MAX_CID (struct bxe_softc*) ;
 scalar_t__ BXE_VF_CIDS ;
 scalar_t__ CNIC_CID_MAX ;
 scalar_t__ CNIC_SUPPORT (struct bxe_softc*) ;
 scalar_t__ IS_SRIOV (struct bxe_softc*) ;
 int QM_CID_ROUND ;
 int roundup (int,int ) ;

__attribute__((used)) static int
bxe_set_qm_cid_count(struct bxe_softc *sc)
{
    int cid_count = BXE_L2_MAX_CID(sc);

    if (IS_SRIOV(sc)) {
        cid_count += BXE_VF_CIDS;
    }

    if (CNIC_SUPPORT(sc)) {
        cid_count += CNIC_CID_MAX;
    }

    return (roundup(cid_count, QM_CID_ROUND));
}
