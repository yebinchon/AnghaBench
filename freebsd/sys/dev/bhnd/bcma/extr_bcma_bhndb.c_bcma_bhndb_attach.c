
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int bcma_attach (int ) ;
 int bhnd_generic_attach (int ) ;
 int device_delete_children (int ) ;

__attribute__((used)) static int
bcma_bhndb_attach(device_t dev)
{
 int error;


 if ((error = bcma_attach(dev)))
  goto failed;


 if ((error = bhnd_generic_attach(dev)))
  goto failed;

 return (0);

failed:
 device_delete_children(dev);
 return (error);
}
