
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_port {int port_num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 struct ib_umad_port* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_port(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct ib_umad_port *port = dev_get_drvdata(dev);

 if (!port)
  return -ENODEV;

 return sprintf(buf, "%d\n", port->port_num);
}
