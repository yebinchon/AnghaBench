
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scanreq {int space; } ;
struct ieee80211_scan_entry {int dummy; } ;


 scalar_t__ scan_space (struct ieee80211_scan_entry const*,int*) ;

__attribute__((used)) static void
get_scan_space(void *arg, const struct ieee80211_scan_entry *se)
{
 struct scanreq *req = arg;
 int ielen;

 req->space += scan_space(se, &ielen);
}
