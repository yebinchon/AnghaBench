
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int device_t ;


 int XenbusStateClosing ;
 int device_printf (int ,char*) ;
 int xenbus_dev_verror (int ,int,char const*,int ) ;
 int xenbus_set_state (int ,int ) ;

void
xenbus_dev_vfatal(device_t dev, int err, const char *fmt, va_list ap)
{
 xenbus_dev_verror(dev, err, fmt, ap);
 device_printf(dev, "Fatal error. Transitioning to Closing State\n");
 xenbus_set_state(dev, XenbusStateClosing);
}
