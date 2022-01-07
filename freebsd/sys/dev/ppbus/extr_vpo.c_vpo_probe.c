
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpo_data {int vpo_isplus; int vpo_io; int vpo_dev; } ;
typedef int device_t ;


 struct vpo_data* DEVTOSOFTC (int ) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int imm_probe (int ,int *) ;
 int ppb_lock (int ) ;
 int ppb_unlock (int ) ;
 int vpoio_probe (int ,int *) ;

__attribute__((used)) static int
vpo_probe(device_t dev)
{
 device_t ppbus = device_get_parent(dev);
 struct vpo_data *vpo;
 int error;

 vpo = DEVTOSOFTC(dev);
 vpo->vpo_dev = dev;



 ppb_lock(ppbus);
 if ((error = vpoio_probe(dev, &vpo->vpo_io)) == 0) {
  vpo->vpo_isplus = 0;
  device_set_desc(dev,
    "Iomega VPI0 Parallel to SCSI interface");
 } else if ((error = imm_probe(dev, &vpo->vpo_io)) == 0) {
  vpo->vpo_isplus = 1;
  device_set_desc(dev,
    "Iomega Matchmaker Parallel to SCSI interface");
 } else {
  ppb_unlock(ppbus);
  return (error);
 }
 ppb_unlock(ppbus);

 return (0);
}
