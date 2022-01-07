
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int panic (char*) ;

__attribute__((used)) static int
bcm_mips_attach_default(device_t dev)
{


 panic("device_attach() unimplemented");
}
