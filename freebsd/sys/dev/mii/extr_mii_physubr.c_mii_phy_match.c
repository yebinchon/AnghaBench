
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_phydesc {int dummy; } ;
struct mii_attach_args {int dummy; } ;


 struct mii_phydesc const* mii_phy_match_gen (struct mii_attach_args const*,struct mii_phydesc const*,int) ;

const struct mii_phydesc *
mii_phy_match(const struct mii_attach_args *ma, const struct mii_phydesc *mpd)
{

 return (mii_phy_match_gen(ma, mpd, sizeof(struct mii_phydesc)));
}
