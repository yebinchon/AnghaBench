
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evdev_dev {int ev_shortname; } ;


 int NAMELEN ;
 int snprintf (int ,int ,char*,char const*) ;

inline void
evdev_set_phys(struct evdev_dev *evdev, const char *name)
{

 snprintf(evdev->ev_shortname, NAMELEN, "%s", name);
}
