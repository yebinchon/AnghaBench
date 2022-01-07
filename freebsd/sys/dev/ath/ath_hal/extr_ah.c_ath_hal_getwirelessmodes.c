
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ath_hal {int dummy; } ;


 int ath_hal_getWirelessModes (struct ath_hal*) ;

u_int
ath_hal_getwirelessmodes(struct ath_hal*ah)
{
 return ath_hal_getWirelessModes(ah);
}
