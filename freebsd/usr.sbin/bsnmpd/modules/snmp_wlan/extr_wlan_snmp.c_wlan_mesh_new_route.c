
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int imr_dest; } ;
struct wlan_mesh_route {int mroute_status; TYPE_1__ imroute; } ;


 int IEEE80211_ADDR_LEN ;
 int RowStatus_notReady ;
 scalar_t__ malloc (int) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct wlan_mesh_route*,int ,int) ;

struct wlan_mesh_route *
wlan_mesh_new_route(const uint8_t *dstmac)
{
 struct wlan_mesh_route *wmr;

 if ((wmr = (struct wlan_mesh_route *)malloc(sizeof(*wmr))) == ((void*)0))
  return (((void*)0));

 memset(wmr, 0, sizeof(*wmr));
 memcpy(wmr->imroute.imr_dest, dstmac, IEEE80211_ADDR_LEN);
 wmr->mroute_status = RowStatus_notReady;

 return (wmr);
}
