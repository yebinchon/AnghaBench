
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ LIO_DRV_APP_END ;
 scalar_t__ LIO_DRV_APP_START ;
 scalar_t__ LIO_DRV_INVALID_APP ;
 char** lio_app_str ;

__attribute__((used)) static char *
lio_get_app_string(uint32_t app_mode)
{

 if (app_mode <= LIO_DRV_APP_END)
  return (lio_app_str[app_mode - LIO_DRV_APP_START]);

 return (lio_app_str[LIO_DRV_INVALID_APP - LIO_DRV_APP_START]);
}
