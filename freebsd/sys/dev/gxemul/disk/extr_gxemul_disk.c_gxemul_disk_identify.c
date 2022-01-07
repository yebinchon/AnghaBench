
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 int BUS_ADD_CHILD (int ,int ,char*,unsigned int) ;
 int MTX_DEF ;
 int gxemul_disk_controller_mutex ;
 scalar_t__ gxemul_disk_read (unsigned int,int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
gxemul_disk_identify(driver_t *drv, device_t parent)
{
 unsigned diskid;

 mtx_init(&gxemul_disk_controller_mutex, "GXemul disk controller", ((void*)0), MTX_DEF);

 mtx_lock(&gxemul_disk_controller_mutex);
 for (diskid = 0; diskid < 0x100; diskid++) {





  if (gxemul_disk_read(diskid, ((void*)0), 0) != 0)
   break;
  BUS_ADD_CHILD(parent, 0, "gxemul_disk", diskid);
 }
 mtx_unlock(&gxemul_disk_controller_mutex);
}
