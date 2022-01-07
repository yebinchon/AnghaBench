
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bwn_phy_n {int dummy; } ;
struct TYPE_2__ {struct bwn_phy_n* phy_n; } ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct bwn_phy_n* malloc (int,int ,int) ;

int
bwn_nphy_op_allocate(struct bwn_mac *mac)
{
 struct bwn_phy_n *nphy;

 nphy = malloc(sizeof(*nphy), M_DEVBUF, M_ZERO | M_NOWAIT);
 if (!nphy)
  return -ENOMEM;

 mac->mac_phy.phy_n = nphy;

 return 0;
}
