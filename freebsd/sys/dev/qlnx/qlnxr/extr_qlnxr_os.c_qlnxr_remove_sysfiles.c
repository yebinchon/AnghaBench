
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct qlnxr_dev {TYPE_1__ ibdev; } ;


 int ARRAY_SIZE (int *) ;
 int device_remove_file (int *,int ) ;
 int * qlnxr_class_attributes ;

__attribute__((used)) static void
qlnxr_remove_sysfiles(struct qlnxr_dev *dev)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(qlnxr_class_attributes); ++i)
  device_remove_file(&dev->ibdev.dev, qlnxr_class_attributes[i]);
}
