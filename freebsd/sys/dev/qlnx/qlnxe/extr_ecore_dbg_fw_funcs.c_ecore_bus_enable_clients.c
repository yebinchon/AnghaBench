
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;


 int DBG_REG_CLIENT_ENABLE ;
 int ecore_wr (struct ecore_hwfn*,struct ecore_ptt*,int ,int ) ;

__attribute__((used)) static void ecore_bus_enable_clients(struct ecore_hwfn *p_hwfn,
          struct ecore_ptt *p_ptt,
          u32 client_mask)
{
 ecore_wr(p_hwfn, p_ptt, DBG_REG_CLIENT_ENABLE, client_mask);
}
