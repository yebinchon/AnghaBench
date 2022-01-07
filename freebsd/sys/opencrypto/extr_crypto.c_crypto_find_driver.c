
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * device_t ;
struct TYPE_2__ {int cc_flags; int * cc_dev; } ;


 int CRYPTOCAP_F_CLEANUP ;
 int CRYPTO_DRIVER_LOCK () ;
 int CRYPTO_DRIVER_UNLOCK () ;
 TYPE_1__* crypto_drivers ;
 int crypto_drivers_num ;
 int device_get_name (int *) ;
 int device_get_nameunit (int *) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,int ,int) ;

int
crypto_find_driver(const char *match)
{
 int i, len = strlen(match);

 CRYPTO_DRIVER_LOCK();
 for (i = 0; i < crypto_drivers_num; i++) {
  device_t dev = crypto_drivers[i].cc_dev;
  if (dev == ((void*)0) ||
      (crypto_drivers[i].cc_flags & CRYPTOCAP_F_CLEANUP))
   continue;
  if (strncmp(match, device_get_nameunit(dev), len) == 0 ||
      strncmp(match, device_get_name(dev), len) == 0)
   break;
 }
 CRYPTO_DRIVER_UNLOCK();
 return i < crypto_drivers_num ? i : -1;
}
