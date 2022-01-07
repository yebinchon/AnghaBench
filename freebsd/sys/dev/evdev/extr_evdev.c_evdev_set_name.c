
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_name; } ;


 int NAMELEN ;
 int snprintf (int ,int ,char*,char const*) ;

inline void
evdev_set_name(struct evdev_dev *evdev, const char *name)
{

 snprintf(evdev->ev_name, NAMELEN, "%s", name);
}
