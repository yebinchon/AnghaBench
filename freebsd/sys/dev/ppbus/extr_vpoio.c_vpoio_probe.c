
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpoio_data {int vpo_dev; } ;
typedef int device_t ;


 int INIT_TRIG_MICROSEQ ;
 int vpoio_detect (struct vpoio_data*) ;

int
vpoio_probe(device_t dev, struct vpoio_data *vpo)
{
 int error;


 vpo->vpo_dev = dev;




 INIT_TRIG_MICROSEQ;


 if ((error = vpoio_detect(vpo))) {
  return (error);
 }

 return (0);
}
