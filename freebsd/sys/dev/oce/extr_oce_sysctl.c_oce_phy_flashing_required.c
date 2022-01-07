
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oce_phy_info {scalar_t__ phy_type; scalar_t__ interface_type; } ;
typedef int boolean_t ;
typedef int POCE_SOFTC ;


 int FALSE ;
 scalar_t__ PHY_TYPE_BASET_10GB ;
 scalar_t__ TN_8022 ;
 int TRUE ;
 int oce_mbox_get_phy_info (int ,struct oce_phy_info*) ;

__attribute__((used)) static boolean_t
oce_phy_flashing_required(POCE_SOFTC sc)
{
 int status = 0;
 struct oce_phy_info phy_info;

 status = oce_mbox_get_phy_info(sc, &phy_info);
 if (status)
  return FALSE;

 if ((phy_info.phy_type == TN_8022) &&
  (phy_info.interface_type == PHY_TYPE_BASET_10GB)) {
  return TRUE;
 }

 return FALSE;
}
