
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phydesc {scalar_t__ mpd_oui; scalar_t__ mpd_model; int * mpd_name; } ;
struct mii_attach_args {int mii_id2; int mii_id1; } ;


 scalar_t__ MII_MODEL (int ) ;
 scalar_t__ MII_OUI (int ,int ) ;

const struct mii_phydesc *
mii_phy_match_gen(const struct mii_attach_args *ma,
  const struct mii_phydesc *mpd, size_t len)
{

 for (; mpd->mpd_name != ((void*)0);
     mpd = (const struct mii_phydesc *)((const char *)mpd + len)) {
  if (MII_OUI(ma->mii_id1, ma->mii_id2) == mpd->mpd_oui &&
      MII_MODEL(ma->mii_id2) == mpd->mpd_model)
   return (mpd);
 }
 return (((void*)0));
}
