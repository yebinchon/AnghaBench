
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct ieee80211_rate_table {TYPE_1__* info; } ;
struct TYPE_2__ {scalar_t__ phy; int dot11Rate; int shortPreamble; } ;


 int IEEE80211_RATE_BASIC ;
 scalar_t__ IEEE80211_T_CCK ;
 int srate (int) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
checkpreamble(const struct ieee80211_rate_table *rt, uint8_t rix,
 int isShortPreamble, int verbose)
{
 if (isShortPreamble) {
  if (rt->info[rix].phy != IEEE80211_T_CCK) {
   if (verbose)
    warnx("short preamble not meaningful, ignored");
   isShortPreamble = 0;
  } else if (!rt->info[rix].shortPreamble) {
   if (verbose)
    warnx("short preamble not meaningful with "
        "rate %s, ignored",
        srate(rt->info[rix].dot11Rate &~ IEEE80211_RATE_BASIC));
   isShortPreamble = 0;
  }
 }
 return isShortPreamble;
}
