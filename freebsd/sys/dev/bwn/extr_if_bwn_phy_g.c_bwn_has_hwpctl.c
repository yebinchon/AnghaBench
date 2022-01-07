
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ hwpctl; int (* use_hwpctl ) (struct bwn_mac*) ;} ;
struct bwn_mac {TYPE_1__ mac_phy; } ;


 int stub1 (struct bwn_mac*) ;

__attribute__((used)) static uint8_t
bwn_has_hwpctl(struct bwn_mac *mac)
{

 if (mac->mac_phy.hwpctl == 0 || mac->mac_phy.use_hwpctl == ((void*)0))
  return (0);
 return (mac->mac_phy.use_hwpctl(mac));
}
