
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {TYPE_1__* info; } ;
struct TYPE_4__ {int shortPreamble; int rateCode; } ;
typedef TYPE_2__ HAL_RATE_TABLE ;


 int KASSERT (int,char*) ;

__attribute__((used)) static uint8_t
ath_tx_get_rtscts_rate(struct ath_hal *ah, const HAL_RATE_TABLE *rt,
    int cix, int shortPreamble)
{
 uint8_t ctsrate;







 KASSERT(cix != 0xff, ("cix not setup"));
 ctsrate = rt->info[cix].rateCode;


 if (shortPreamble)
  ctsrate |= rt->info[cix].shortPreamble;

 return (ctsrate);
}
