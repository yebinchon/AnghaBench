
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DCBX_APP_SF ;
 scalar_t__ DCBX_APP_SF_ETHTYPE ;
 scalar_t__ GET_MFW_FIELD (int ,int ) ;

__attribute__((used)) static bool ecore_dcbx_app_ethtype(u32 app_info_bitmap)
{
 return !!(GET_MFW_FIELD(app_info_bitmap, DCBX_APP_SF) ==
    DCBX_APP_SF_ETHTYPE);
}
