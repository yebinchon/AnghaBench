
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucm_device {int dev; } ;
struct ib_device {int dummy; } ;


 int device_unregister (int *) ;

__attribute__((used)) static void ib_ucm_remove_one(struct ib_device *device, void *client_data)
{
 struct ib_ucm_device *ucm_dev = client_data;

 if (!ucm_dev)
  return;

 device_unregister(&ucm_dev->dev);
}
