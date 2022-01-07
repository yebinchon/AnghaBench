
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uverbs_device {int disassociate_srcu; int ib_dev; } ;
struct ib_device {char* name; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct ib_uverbs_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;
 struct ib_device* srcu_dereference (int ,int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

__attribute__((used)) static ssize_t show_ibdev(struct device *device, struct device_attribute *attr,
     char *buf)
{
 int ret = -ENODEV;
 int srcu_key;
 struct ib_uverbs_device *dev = dev_get_drvdata(device);
 struct ib_device *ib_dev;

 if (!dev)
  return -ENODEV;

 srcu_key = srcu_read_lock(&dev->disassociate_srcu);
 ib_dev = srcu_dereference(dev->ib_dev, &dev->disassociate_srcu);
 if (ib_dev)
  ret = sprintf(buf, "%s\n", ib_dev->name);
 srcu_read_unlock(&dev->disassociate_srcu, srcu_key);

 return ret;
}
