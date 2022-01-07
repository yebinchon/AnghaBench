
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ecore_filter_accept_flags {int dummy; } ;
struct ecore_sp_vport_update_params {struct ecore_filter_accept_flags accept_flags; } ;
struct ecore_hwfn {scalar_t__ p_dev; } ;
typedef int qlnx_host_t ;


 int BIT (int ) ;
 int ECORE_ACCEPT_MCAST_UNMATCHED ;
 int ECORE_ACCEPT_UCAST_UNMATCHED ;
 int ECORE_INVAL ;
 int ECORE_IOV_VP_UPDATE_ACCEPT_PARAM ;
 int QL_DPRINT1 (int *,char*,int) ;
 int ecore_iov_vf_has_vport_instance (struct ecore_hwfn*,int) ;

__attribute__((used)) static int
__qlnx_iov_update_vport(struct ecore_hwfn *hwfn, uint8_t vfid,
        struct ecore_sp_vport_update_params *params, uint16_t * tlvs)
{
        uint8_t mask;
        struct ecore_filter_accept_flags *flags;

 if (!ecore_iov_vf_has_vport_instance(hwfn, vfid)) {
  QL_DPRINT1(((qlnx_host_t *)hwfn->p_dev),
   "VF[%d] vport not initialized\n", vfid);
  return ECORE_INVAL;
 }





        mask = ECORE_ACCEPT_UCAST_UNMATCHED | ECORE_ACCEPT_MCAST_UNMATCHED;
        flags = &params->accept_flags;
        if (!(*tlvs & BIT(ECORE_IOV_VP_UPDATE_ACCEPT_PARAM)))
                return 0;

        return 0;

}
