
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int fw_ver; } ;
struct qlnxr_dev {TYPE_1__ attr; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct qlnxr_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static ssize_t
show_fw_ver(struct device *device,
 struct device_attribute *attr, char *buf)
{
 struct qlnxr_dev *dev = dev_get_drvdata(device);
 uint32_t fw_ver = (uint32_t) dev->attr.fw_ver;

 return sprintf(buf, "%d.%d.%d\n",
         (fw_ver >> 24) & 0xff, (fw_ver >> 16) & 0xff,
         (fw_ver >> 8) & 0xff);
}
