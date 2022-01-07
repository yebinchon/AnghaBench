
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; int vpo_mode_found; } ;
typedef int device_t ;


 int PPB_DONTWAIT ;
 int PPB_EPP ;
 int PPB_NIBBLE ;
 int PPB_PS2 ;
 int VP0_EINITFAILED ;
 int VP0_MODE_EPP ;
 int VP0_MODE_NIBBLE ;
 int VP0_MODE_PS2 ;
 int VP0_MODE_UNDEFINED ;
 scalar_t__ bootverbose ;
 int connect_epp_microseq ;
 int connect_spp_microseq ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int disconnect_microseq ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_request_bus (int ,int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 scalar_t__ vpoio_in_disk_mode (struct vpoio_data*) ;
 int vpoio_reset (struct vpoio_data*) ;

__attribute__((used)) static int
vpoio_detect(struct vpoio_data *vpo)
{
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int error, ret;


 if ((error = ppb_request_bus(ppbus, vpo->vpo_dev, PPB_DONTWAIT)))
  return (error);


 ppb_MS_microseq(ppbus, vpo->vpo_dev, disconnect_microseq, &ret);


 if (ppb_set_mode(ppbus, PPB_EPP) != -1) {


  ppb_MS_microseq(ppbus, vpo->vpo_dev, connect_epp_microseq, &ret);
 }



 if (!vpoio_in_disk_mode(vpo)) {







  if (ppb_set_mode(ppbus, PPB_PS2) != -1) {
   vpo->vpo_mode_found = VP0_MODE_PS2;
  } else {
   if (ppb_set_mode(ppbus, PPB_NIBBLE) == -1)
    goto error;

   vpo->vpo_mode_found = VP0_MODE_NIBBLE;
  }


  ppb_MS_microseq(ppbus, vpo->vpo_dev, connect_spp_microseq, &ret);
  if (!vpoio_in_disk_mode(vpo)) {
   vpo->vpo_mode_found = VP0_MODE_UNDEFINED;
   if (bootverbose)
    device_printf(vpo->vpo_dev,
        "can't connect to the drive\n");


   ppb_MS_microseq(ppbus, vpo->vpo_dev, disconnect_microseq,
     &ret);
   goto error;
  }
 } else {
  vpo->vpo_mode_found = VP0_MODE_EPP;
 }


 vpoio_reset(vpo);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, disconnect_microseq, &ret);



 if (vpoio_in_disk_mode(vpo)) {
  if (bootverbose)
   device_printf(vpo->vpo_dev,
       "can't disconnect from the drive\n");
  goto error;
 }

 ppb_release_bus(ppbus, vpo->vpo_dev);
 return (0);

error:
 ppb_release_bus(ppbus, vpo->vpo_dev);
 return (VP0_EINITFAILED);
}
