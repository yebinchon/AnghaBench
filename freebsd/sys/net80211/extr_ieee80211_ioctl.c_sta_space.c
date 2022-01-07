
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211req_sta_info {int dummy; } ;
struct TYPE_2__ {size_t len; } ;
struct ieee80211_node {TYPE_1__ ni_ies; } ;


 size_t roundup (int,int) ;

__attribute__((used)) static size_t
sta_space(const struct ieee80211_node *ni, size_t *ielen)
{
 *ielen = ni->ni_ies.len;
 return roundup(sizeof(struct ieee80211req_sta_info) + *ielen,
        sizeof(uint32_t));
}
