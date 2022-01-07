
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ieee80211req_scan_result {int dummy; } ;
struct TYPE_2__ {int len; } ;
struct ieee80211_scan_entry {int* se_ssid; int* se_meshid; TYPE_1__ se_ies; } ;


 size_t roundup (size_t,int) ;

__attribute__((used)) static size_t
scan_space(const struct ieee80211_scan_entry *se, int *ielen)
{
 size_t len;

 *ielen = se->se_ies.len;





 len = sizeof(struct ieee80211req_scan_result) + se->se_ssid[1] +
     se->se_meshid[1] + *ielen;
 return roundup(len, sizeof(uint32_t));
}
