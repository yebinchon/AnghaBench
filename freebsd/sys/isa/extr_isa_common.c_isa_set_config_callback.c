
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isa_device {void* id_config_arg; int * id_config_cb; } ;
typedef int isa_config_cb ;
typedef int device_t ;


 struct isa_device* DEVTOISA (int ) ;

__attribute__((used)) static void
isa_set_config_callback(device_t dev, device_t child, isa_config_cb *fn,
    void *arg)
{
 struct isa_device* idev = DEVTOISA(child);

 idev->id_config_cb = fn;
 idev->id_config_arg = arg;
}
