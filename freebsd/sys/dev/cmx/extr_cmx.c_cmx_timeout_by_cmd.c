
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned long CCID_DRIVER_ASYNC_POWERUP_TIMEOUT ;
 unsigned long CCID_DRIVER_BULK_DEFAULT_TIMEOUT ;
 unsigned long CCID_DRIVER_MINIMUM_TIMEOUT ;
__attribute__((used)) static inline unsigned long
cmx_timeout_by_cmd(uint8_t cmd)
{
 switch (cmd) {
 case 128:
 case 131:
 case 129:
 case 133:
  return CCID_DRIVER_BULK_DEFAULT_TIMEOUT;

 case 134:
  return CCID_DRIVER_ASYNC_POWERUP_TIMEOUT;

 case 137:
 case 135:
 case 138:
 case 132:
 case 130:
 case 139:
 case 136:
 default:
  return CCID_DRIVER_MINIMUM_TIMEOUT;
 }
}
