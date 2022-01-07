
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static const char *drm_pci_get_name(struct drm_device *dev)
{
 return dev->driver->name;
}
