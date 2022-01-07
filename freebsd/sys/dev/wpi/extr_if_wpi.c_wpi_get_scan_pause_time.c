
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ IEEE80211_DUR_TU ;
 scalar_t__ WPI_PAUSE_MAX_TIME ;
 scalar_t__ WPI_PAUSE_SCAN (scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t
wpi_get_scan_pause_time(uint32_t time, uint16_t bintval)
{
 uint32_t mod = (time % bintval) * IEEE80211_DUR_TU;
 uint32_t nbeacons = time / bintval;

 if (mod > WPI_PAUSE_MAX_TIME)
  mod = WPI_PAUSE_MAX_TIME;

 return WPI_PAUSE_SCAN(nbeacons, mod);
}
