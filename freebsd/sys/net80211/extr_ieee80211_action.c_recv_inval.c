
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_frame {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
recv_inval(struct ieee80211_node *ni, const struct ieee80211_frame *wh,
 const uint8_t *frm, const uint8_t *efrm)
{
 return EINVAL;
}
