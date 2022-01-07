
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devinfo_dev {int dd_desc; int * dd_location; int * dd_name; } ;
struct device_entry {int dummy; } ;


 int assert (int ) ;
 struct device_entry* device_entry_create (int *,int *,int ) ;

__attribute__((used)) static struct device_entry *
device_entry_create_devinfo(const struct devinfo_dev *dev_p)
{

 assert(dev_p->dd_name != ((void*)0));
 assert(dev_p->dd_location != ((void*)0));

 return (device_entry_create(dev_p->dd_name, dev_p->dd_location,
     dev_p->dd_desc));
}
