#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int PARSER_ETH_CONN_GFT_ACTION_CM_HDR ; 
 int /*<<< orphan*/  PRS_REG_CM_HDR_GFT ; 
 int PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT ; 
 int PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT ; 
 int T_ETH_PACKET_ACTION_GFT_EVENTID ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 

void FUNC2 (struct ecore_hwfn *p_hwfn,
	struct ecore_ptt *p_ptt)
{
	u32 rfs_cm_hdr_event_id;

    /* Set RFS event ID to be awakened i Tstorm By Prs */
    rfs_cm_hdr_event_id = FUNC0(p_hwfn, p_ptt, PRS_REG_CM_HDR_GFT);
    rfs_cm_hdr_event_id |= T_ETH_PACKET_ACTION_GFT_EVENTID << PRS_REG_CM_HDR_GFT_EVENT_ID_SHIFT;
    rfs_cm_hdr_event_id |= PARSER_ETH_CONN_GFT_ACTION_CM_HDR << PRS_REG_CM_HDR_GFT_CM_HDR_SHIFT;
    FUNC1(p_hwfn, p_ptt, PRS_REG_CM_HDR_GFT, rfs_cm_hdr_event_id);
}