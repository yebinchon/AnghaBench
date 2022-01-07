
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {int addr_space_rb; } ;


 int RB_INSERT (int ,int *,struct ttm_buffer_object*) ;
 int ttm_bo_device_buffer_objects ;

__attribute__((used)) static void ttm_bo_vm_insert_rb(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;


 RB_INSERT(ttm_bo_device_buffer_objects, &bdev->addr_space_rb, bo);
}
