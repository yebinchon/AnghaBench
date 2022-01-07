
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_umad_port {TYPE_1__* ib_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int ENODEV ;
 struct ib_umad_port* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_ibdev(struct device *dev, struct device_attribute *attr,
     char *buf)
{
 struct ib_umad_port *port = dev_get_drvdata(dev);

 if (!port)
  return -ENODEV;

 return sprintf(buf, "%s\n", port->ib_dev->name);
}
