
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int sioattach (int ,int ,unsigned long) ;
 int sioprobe (int ,int ,unsigned long,int) ;

__attribute__((used)) static int
sio_pccard_attach(device_t dev)
{
 int err;



 if ((err = sioprobe(dev, 0, 0UL, 1)) > 0)
  return (err);
 return (sioattach(dev, 0, 0UL));
}
