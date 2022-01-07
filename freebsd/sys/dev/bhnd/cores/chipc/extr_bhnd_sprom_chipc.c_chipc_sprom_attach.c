
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_caps {int sprom_offset; } ;
typedef int device_t ;


 int BHND_CHIPC_DISABLE_SPROM (int ) ;
 int BHND_CHIPC_ENABLE_SPROM (int ) ;
 struct chipc_caps* BHND_CHIPC_GET_CAPS (int ) ;
 int bhnd_sprom_attach (int ,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
chipc_sprom_attach(device_t dev)
{
 struct chipc_caps *caps;
 device_t chipc;
 int error;

 chipc = device_get_parent(dev);
 caps = BHND_CHIPC_GET_CAPS(chipc);



 if ((error = BHND_CHIPC_ENABLE_SPROM(chipc)))
  return (error);

 error = bhnd_sprom_attach(dev, caps->sprom_offset);
 BHND_CHIPC_DISABLE_SPROM(chipc);
 return (error);
}
