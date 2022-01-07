
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device {int (* get_dev_fw_str ) (struct ib_device*,char*,size_t) ;} ;


 int stub1 (struct ib_device*,char*,size_t) ;

void ib_get_device_fw_str(struct ib_device *dev, char *str, size_t str_len)
{
 if (dev->get_dev_fw_str)
  dev->get_dev_fw_str(dev, str, str_len);
 else
  str[0] = '\0';
}
