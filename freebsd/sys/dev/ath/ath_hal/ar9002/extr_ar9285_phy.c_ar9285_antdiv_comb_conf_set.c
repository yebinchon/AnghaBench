
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int main_lna_conf; int alt_lna_conf; int fast_div_bias; } ;
typedef TYPE_1__ HAL_ANT_COMB_CONFIG ;


 int AR_PHY_9285_ANT_DIV_ALT_LNACONF ;
 int AR_PHY_9285_ANT_DIV_ALT_LNACONF_S ;
 int AR_PHY_9285_ANT_DIV_MAIN_LNACONF ;
 int AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S ;
 int AR_PHY_9285_FAST_DIV_BIAS ;
 int AR_PHY_9285_FAST_DIV_BIAS_S ;
 int AR_PHY_MULTICHAIN_GAIN_CTL ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9285_antdiv_comb_conf_set(struct ath_hal *ah, HAL_ANT_COMB_CONFIG *antconf)
{
 uint32_t regval;

 regval = OS_REG_READ(ah, AR_PHY_MULTICHAIN_GAIN_CTL);
 regval &= ~(AR_PHY_9285_ANT_DIV_MAIN_LNACONF |
      AR_PHY_9285_ANT_DIV_ALT_LNACONF |
      AR_PHY_9285_FAST_DIV_BIAS);
 regval |= ((antconf->main_lna_conf << AR_PHY_9285_ANT_DIV_MAIN_LNACONF_S)
     & AR_PHY_9285_ANT_DIV_MAIN_LNACONF);
 regval |= ((antconf->alt_lna_conf << AR_PHY_9285_ANT_DIV_ALT_LNACONF_S)
     & AR_PHY_9285_ANT_DIV_ALT_LNACONF);
 regval |= ((antconf->fast_div_bias << AR_PHY_9285_FAST_DIV_BIAS_S)
     & AR_PHY_9285_FAST_DIV_BIAS);

 OS_REG_WRITE(ah, AR_PHY_MULTICHAIN_GAIN_CTL, regval);
}
