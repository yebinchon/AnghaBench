
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int HAL_MFP_QOSDATA ;

__attribute__((used)) static inline u_int32_t
ath_hal_get_mfp_qos(struct ath_hal *ah)
{

 return HAL_MFP_QOSDATA;
}
