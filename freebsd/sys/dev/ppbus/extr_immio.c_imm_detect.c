
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
 int device_get_parent (int ) ;
 int device_printf (int ,char*) ;
 int imm_connect (struct vpoio_data*,int ,int*,int ) ;
 int imm_disconnect (struct vpoio_data*,int*,int) ;
 int ppb_MS_microseq (int ,int ,int ,int *) ;
 int ppb_release_bus (int ,int ) ;
 int ppb_request_bus (int ,int ,int ) ;
 int ppb_set_mode (int ,int ) ;
 int reset_microseq ;

__attribute__((used)) static int
imm_detect(struct vpoio_data *vpo)
{
 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int error;

 if ((error = ppb_request_bus(ppbus, vpo->vpo_dev, PPB_DONTWAIT)))
  return (error);


 imm_disconnect(vpo, ((void*)0), 0);

 vpo->vpo_mode_found = VP0_MODE_UNDEFINED;
 error = 1;


 if (ppb_set_mode(ppbus, PPB_EPP) != -1) {
  imm_connect(vpo, PPB_DONTWAIT, &error, 0);
 }


 if (error) {
  if (ppb_set_mode(ppbus, PPB_PS2) != -1) {
   imm_connect(vpo, PPB_DONTWAIT, &error, 0);
  }
  if (error) {
   if (ppb_set_mode(ppbus, PPB_NIBBLE) != -1) {
    imm_connect(vpo, PPB_DONTWAIT, &error, 0);
    if (error)
     goto error;
    vpo->vpo_mode_found = VP0_MODE_NIBBLE;
   } else {
    device_printf(vpo->vpo_dev,
        "NIBBLE mode unavailable!\n");
    goto error;
   }
  } else {
   vpo->vpo_mode_found = VP0_MODE_PS2;
  }
 } else {
  vpo->vpo_mode_found = VP0_MODE_EPP;
 }


 ppb_MS_microseq(ppbus, vpo->vpo_dev, reset_microseq, ((void*)0));


 imm_disconnect(vpo, &error, 1);




 if (error) {
  if (bootverbose)
   device_printf(vpo->vpo_dev,
       "can't disconnect from the drive\n");
  goto error;
 }

 return (0);

error:
 ppb_release_bus(ppbus, vpo->vpo_dev);
 return (VP0_EINITFAILED);
}
