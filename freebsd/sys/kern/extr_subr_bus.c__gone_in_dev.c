
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int P_OSREL_MAJOR (int ) ;
 int __FreeBSD_version ;
 int device_printf (int ,char*,...) ;
 int gone_panic (int,int,char const*) ;

void
_gone_in_dev(device_t dev, int major, const char *msg)
{

 gone_panic(major, P_OSREL_MAJOR(__FreeBSD_version), msg);
 if (P_OSREL_MAJOR(__FreeBSD_version) >= major)
  device_printf(dev,
      "Obsolete code will removed soon: %s\n", msg);
 else
  device_printf(dev,
      "Deprecated code (to be removed in FreeBSD %d): %s\n",
      major, msg);
}
