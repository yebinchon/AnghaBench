
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_device {int ig_list; int refcount; } ;
struct TYPE_2__ {int device_list_mutex; } ;


 int ISER_INFO (char*,struct iser_device*,int ) ;
 int M_ISER_VERBS ;
 int free (struct iser_device*,int ) ;
 TYPE_1__ ig ;
 int iser_free_device_ib_res (struct iser_device*) ;
 int list_del (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static void
iser_device_try_release(struct iser_device *device)
{
 sx_xlock(&ig.device_list_mutex);
 device->refcount--;
 ISER_INFO("device %p refcount %d", device, device->refcount);
 if (!device->refcount) {
  iser_free_device_ib_res(device);
  list_del(&device->ig_list);
  free(device, M_ISER_VERBS);
  device = ((void*)0);
 }
 sx_xunlock(&ig.device_list_mutex);
}
