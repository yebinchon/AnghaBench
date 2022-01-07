
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct TYPE_2__ {int ic_sta; } ;


 int get_random_bytes (scalar_t__*,int) ;
 int ieee80211_iterate_nodes (int *,int ,scalar_t__*) ;
 int mesh_checkid ;

__attribute__((used)) static uint32_t
mesh_generateid(struct ieee80211vap *vap)
{
 int maxiter = 4;
 uint16_t r;

 do {
  get_random_bytes(&r, 2);
  ieee80211_iterate_nodes(&vap->iv_ic->ic_sta, mesh_checkid, &r);
  maxiter--;
 } while (r == 0 && maxiter > 0);
 return r;
}
