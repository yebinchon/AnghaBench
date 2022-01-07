
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipoib_dev_priv {TYPE_1__* parent; } ;
struct ifnet {struct ipoib_dev_priv* if_softc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,char*) ;
 struct ifnet* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t show_parent(struct device *d, struct device_attribute *attr,
      char *buf)
{
 struct ifnet *dev = to_net_dev(d);
 struct ipoib_dev_priv *priv = dev->if_softc;

 return sprintf(buf, "%s\n", priv->parent->name);
}
