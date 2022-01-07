
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_printf (int ,char*) ;
 int pcm_unregister (int ) ;

__attribute__((used)) static int
hdspe_pcm_detach(device_t dev)
{
 int err;

 err = pcm_unregister(dev);
 if (err) {
  device_printf(dev, "Can't unregister device.\n");
  return (err);
 }

 return (0);
}
