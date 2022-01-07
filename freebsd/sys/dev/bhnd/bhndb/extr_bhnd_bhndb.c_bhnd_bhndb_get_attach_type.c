
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int bhnd_attach_type ;


 int BHND_ATTACH_ADAPTER ;

__attribute__((used)) static bhnd_attach_type
bhnd_bhndb_get_attach_type(device_t dev, device_t child)
{

 return (BHND_ATTACH_ADAPTER);
}
