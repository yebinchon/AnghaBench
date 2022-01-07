
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum ecore_drv_role { ____Placeholder_ecore_drv_role } ecore_drv_role ;


 int DRV_ROLE_KDUMP ;
 int DRV_ROLE_OS ;



__attribute__((used)) static void ecore_get_mfw_drv_role(enum ecore_drv_role drv_role,
       u8 *p_mfw_drv_role)
{
 switch (drv_role) {
 case 128:
  *p_mfw_drv_role = DRV_ROLE_OS;
  break;
 case 129:
  *p_mfw_drv_role = DRV_ROLE_KDUMP;
  break;
 }
}
