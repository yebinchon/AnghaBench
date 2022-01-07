
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bhnd_generic_attach (int ) ;
 int siba_attach (int ) ;
 int siba_detach (int ) ;

__attribute__((used)) static int
siba_nexus_attach(device_t dev)
{
 int error;


 if ((error = siba_attach(dev)))
  return (error);


 if ((error = bhnd_generic_attach(dev)))
  goto failed;

 return (0);

failed:
 siba_detach(dev);
 return (error);
}
