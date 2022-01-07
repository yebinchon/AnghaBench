
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum ecore_led_mode { ____Placeholder_ecore_led_mode } ecore_led_mode ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;


 int DP_ERR (struct ecore_hwfn*,char*) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int DRV_MB_PARAM_SET_LED_MODE_OFF ;
 int DRV_MB_PARAM_SET_LED_MODE_ON ;
 int DRV_MB_PARAM_SET_LED_MODE_OPER ;
 int DRV_MSG_CODE_SET_LED_MODE ;
 int ECORE_INVAL ;



 int ECORE_SUCCESS ;
 int ecore_mcp_cmd (struct ecore_hwfn*,struct ecore_ptt*,int ,int ,int *,int *) ;

enum _ecore_status_t ecore_mcp_set_led(struct ecore_hwfn *p_hwfn,
           struct ecore_ptt *p_ptt,
           enum ecore_led_mode mode)
{
 u32 resp = 0, param = 0, drv_mb_param;
 enum _ecore_status_t rc;

 switch (mode) {
 case 129:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_ON;
  break;
 case 130:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_OFF;
  break;
 case 128:
  drv_mb_param = DRV_MB_PARAM_SET_LED_MODE_OPER;
  break;
 default:
  DP_NOTICE(p_hwfn, 1, "Invalid LED mode %d\n", mode);
  return ECORE_INVAL;
 }

 rc = ecore_mcp_cmd(p_hwfn, p_ptt, DRV_MSG_CODE_SET_LED_MODE,
      drv_mb_param, &resp, &param);
 if (rc != ECORE_SUCCESS)
  DP_ERR(p_hwfn, "MCP response failure, aborting\n");

 return rc;
}
