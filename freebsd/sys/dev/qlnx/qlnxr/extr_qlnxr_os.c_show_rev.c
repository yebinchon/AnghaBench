
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlnxr_dev {TYPE_1__* cdev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int vendor_id; } ;


 struct qlnxr_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t
show_rev(struct device *device, struct device_attribute *attr,
 char *buf)
{
        struct qlnxr_dev *dev = dev_get_drvdata(device);

        return sprintf(buf, "0x%x\n", dev->cdev->vendor_id);
}
