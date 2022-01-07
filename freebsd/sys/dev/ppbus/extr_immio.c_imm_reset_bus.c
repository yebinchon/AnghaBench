
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int PPB_INTR ;
 int PPB_WAIT ;
 int device_get_parent (int ) ;
 int imm_connect (struct vpoio_data*,int,int*,int) ;
 int imm_disconnect (struct vpoio_data*,int *,int) ;
 int ppb_MS_microseq (int ,int ,int ,int *) ;
 int reset_microseq ;

int
imm_reset_bus(struct vpoio_data *vpo)
{
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int disconnected;


 imm_connect(vpo, PPB_WAIT|PPB_INTR, &disconnected, 1);

 if (!disconnected) {


  ppb_MS_microseq(ppbus, vpo->vpo_dev, reset_microseq, ((void*)0));


  imm_disconnect(vpo, ((void*)0), 1);
 }

 return (0);
}
