
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_serial; } ;


 int NAMELEN ;
 int snprintf (int ,int ,char*,char const*) ;

inline void
evdev_set_serial(struct evdev_dev *evdev, const char *serial)
{

 snprintf(evdev->ev_serial, NAMELEN, "%s", serial);
}
