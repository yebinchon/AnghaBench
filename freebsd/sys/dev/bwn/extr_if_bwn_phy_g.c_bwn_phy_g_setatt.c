
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int max; int min; } ;
struct TYPE_7__ {int max; int min; } ;
struct bwn_txpwr_loctl {TYPE_4__ bbatt; TYPE_3__ rfatt; } ;
struct TYPE_5__ {struct bwn_txpwr_loctl pg_loctl; } ;
struct TYPE_6__ {TYPE_1__ phy_g; } ;
struct bwn_mac {TYPE_2__ mac_phy; } ;


 int MAX (int,int) ;
 int MIN (int ,int) ;

__attribute__((used)) static void
bwn_phy_g_setatt(struct bwn_mac *mac, int *bbattp, int *rfattp)
{
 struct bwn_txpwr_loctl *lo = &mac->mac_phy.phy_g.pg_loctl;
 int rfatt = *rfattp;
 int bbatt = *bbattp;

 while (1) {
  if (rfatt > lo->rfatt.max && bbatt > lo->bbatt.max - 4)
   break;
  if (rfatt < lo->rfatt.min && bbatt < lo->bbatt.min + 4)
   break;
  if (bbatt > lo->bbatt.max && rfatt > lo->rfatt.max - 1)
   break;
  if (bbatt < lo->bbatt.min && rfatt < lo->rfatt.min + 1)
   break;
  if (bbatt > lo->bbatt.max) {
   bbatt -= 4;
   rfatt += 1;
   continue;
  }
  if (bbatt < lo->bbatt.min) {
   bbatt += 4;
   rfatt -= 1;
   continue;
  }
  if (rfatt > lo->rfatt.max) {
   rfatt -= 1;
   bbatt += 4;
   continue;
  }
  if (rfatt < lo->rfatt.min) {
   rfatt += 1;
   bbatt -= 4;
   continue;
  }
  break;
 }

 *rfattp = MIN(MAX(rfatt, lo->rfatt.min), lo->rfatt.max);
 *bbattp = MIN(MAX(bbatt, lo->bbatt.min), lo->bbatt.max);
}
