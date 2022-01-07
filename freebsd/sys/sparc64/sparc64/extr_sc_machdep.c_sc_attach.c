
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int SC_MD_FLAGS ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int sc_attach_unit (int ,int) ;

__attribute__((used)) static int
sc_attach(device_t dev)
{

 return (sc_attach_unit(device_get_unit(dev),
     device_get_flags(dev) | SC_MD_FLAGS));
}
