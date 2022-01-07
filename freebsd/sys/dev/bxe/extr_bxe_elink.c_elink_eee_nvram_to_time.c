
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int elink_status_t ;


 int ELINK_EEE_MODE_NVRAM_AGGRESSIVE_TIME ;
 int ELINK_EEE_MODE_NVRAM_BALANCED_TIME ;
 int ELINK_EEE_MODE_NVRAM_LATENCY_TIME ;
 int ELINK_STATUS_OK ;




__attribute__((used)) static elink_status_t elink_eee_nvram_to_time(uint32_t nvram_mode, uint32_t *idle_timer)
{
 switch (nvram_mode) {
 case 129:
  *idle_timer = ELINK_EEE_MODE_NVRAM_BALANCED_TIME;
  break;
 case 130:
  *idle_timer = ELINK_EEE_MODE_NVRAM_AGGRESSIVE_TIME;
  break;
 case 128:
  *idle_timer = ELINK_EEE_MODE_NVRAM_LATENCY_TIME;
  break;
 default:
  *idle_timer = 0;
  break;
 }

 return ELINK_STATUS_OK;
}
