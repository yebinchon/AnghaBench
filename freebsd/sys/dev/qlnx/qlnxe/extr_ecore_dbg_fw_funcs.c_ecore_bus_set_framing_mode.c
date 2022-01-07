
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef enum dbg_bus_frame_modes { ____Placeholder_dbg_bus_frame_modes } dbg_bus_frame_modes ;


 int DBG_REG_FRAMING_MODE ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

__attribute__((used)) static void ecore_bus_set_framing_mode(struct ecore_hwfn *p_hwfn,
            struct ecore_ptt *p_ptt,
            enum dbg_bus_frame_modes mode)
{
 ecore_wr(p_hwfn, p_ptt, DBG_REG_FRAMING_MODE, (u8)mode);
}
