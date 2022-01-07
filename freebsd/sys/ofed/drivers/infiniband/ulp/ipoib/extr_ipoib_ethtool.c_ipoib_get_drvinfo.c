
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
struct ethtool_drvinfo {int driver; } ;


 int strncpy (int ,char*,int) ;

__attribute__((used)) static void ipoib_get_drvinfo(struct ifnet *netdev,
         struct ethtool_drvinfo *drvinfo)
{
 strncpy(drvinfo->driver, "ipoib", sizeof(drvinfo->driver) - 1);
}
