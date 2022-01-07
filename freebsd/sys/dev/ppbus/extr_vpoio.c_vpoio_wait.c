
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int DECLARE_WAIT_MICROSEQUENCE ;
 int PPB_INTR ;
 int WAIT_RET ;
 int WAIT_TMO ;
 int device_get_parent (int ) ;
 int nBUSY ;
 int ppb_MS_init_msq (int ,int,int ,void*,int ,int) ;
 int ppb_MS_microseq (int ,int ,int ,int*) ;
 scalar_t__ ppb_poll_device (int ,int,int ,int ,int ) ;
 int ppb_rstr (int ) ;
 int wait_microseq ;

__attribute__((used)) static char
vpoio_wait(struct vpoio_data *vpo, int tmo)
{
 DECLARE_WAIT_MICROSEQUENCE;

 device_t ppbus = device_get_parent(vpo->vpo_dev);
 int ret, err;
 ppb_MS_init_msq(wait_microseq, 2,
   WAIT_RET, (void *)&ret,
   WAIT_TMO, tmo);

 ppb_MS_microseq(ppbus, vpo->vpo_dev, wait_microseq, &err);

 if (err)
  return (0);

 return(ret);
}
