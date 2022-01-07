
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int PARSER_ETH_CONN_GFT_ACTION_CM_HDR ;
 int PRS_REG_CM_HDR_GFT ;
 int PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT ;
 int PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT ;
 int T_ETH_PACKET_ACTION_GFT_EVENTID ;
 int ecore_rd (struct ecore_hwfn*,struct ecore_ptt*,int ) ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int) ;

void ecore_set_gft_event_id_cm_hdr (struct ecore_hwfn *p_hwfn,
 struct ecore_ptt *p_ptt)
{
 u32 rfs_cm_hdr_event_id;


    rfs_cm_hdr_event_id = ecore_rd(p_hwfn, p_ptt, PRS_REG_CM_HDR_GFT);
    rfs_cm_hdr_event_id |= T_ETH_PACKET_ACTION_GFT_EVENTID << PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT;
    rfs_cm_hdr_event_id |= PARSER_ETH_CONN_GFT_ACTION_CM_HDR << PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT;
    ecore_wr(p_hwfn, p_ptt, PRS_REG_CM_HDR_GFT, rfs_cm_hdr_event_id);
}
