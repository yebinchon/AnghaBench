
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phydesc {int mpd_name; } ;
typedef int device_t ;


 int ENXIO ;
 int device_get_ivars (int ) ;
 int device_set_desc (int ,int ) ;
 struct mii_phydesc* mii_phy_match (int ,struct mii_phydesc const*) ;

int
mii_phy_dev_probe(device_t dev, const struct mii_phydesc *mpd, int mrv)
{

 mpd = mii_phy_match(device_get_ivars(dev), mpd);
 if (mpd != ((void*)0)) {
  device_set_desc(dev, mpd->mpd_name);
  return (mrv);
 }
 return (ENXIO);
}
