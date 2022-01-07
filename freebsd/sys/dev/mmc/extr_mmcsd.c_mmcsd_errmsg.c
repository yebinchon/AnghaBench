
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MMC_ERR_MAX ;
 char const** errmsg ;

__attribute__((used)) static const char *
mmcsd_errmsg(int e)
{

 if (e < 0 || e > MMC_ERR_MAX)
  return "Bad error code";
 return (errmsg[e]);
}
