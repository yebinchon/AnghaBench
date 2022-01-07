
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int DCBX_APP_SF_IEEE ;
 scalar_t__ DCBX_APP_SF_IEEE_ETHTYPE ;
 scalar_t__ DCBX_APP_SF_IEEE_RESERVED ;
 scalar_t__ GET_MFW_FIELD (int ,int ) ;
 int ecore_dcbx_app_ethtype (int ) ;

__attribute__((used)) static bool ecore_dcbx_ieee_app_ethtype(u32 app_info_bitmap)
{
 u8 mfw_val = GET_MFW_FIELD(app_info_bitmap, DCBX_APP_SF_IEEE);


 if (mfw_val == DCBX_APP_SF_IEEE_RESERVED)
  return ecore_dcbx_app_ethtype(app_info_bitmap);

 return !!(mfw_val == DCBX_APP_SF_IEEE_ETHTYPE);
}
