
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct ath_hal {int dummy; } ;


 int ath_hal_mac_psec (struct ath_hal*,int) ;

u_int
ath_hal_mac_usec(struct ath_hal *ah, u_int clks)
{
 uint64_t psec;

 psec = ath_hal_mac_psec(ah, clks);
 return (psec / 1000000);
}
