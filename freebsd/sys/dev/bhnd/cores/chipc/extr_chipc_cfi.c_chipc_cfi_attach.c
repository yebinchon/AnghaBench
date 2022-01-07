
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CHIPC_PFLASH_CFI ;
 int cfi_attach (int ) ;
 int chipc_register_slicer (int ) ;

__attribute__((used)) static int
chipc_cfi_attach(device_t dev)
{
 chipc_register_slicer(CHIPC_PFLASH_CFI);
 return (cfi_attach(dev));
}
