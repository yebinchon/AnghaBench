
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_mem_size; int va_mem_base; int va_io_size; int va_io_base; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int device_t ;


 int ENXIO ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int VGA_ID ;
 int bus_set_resource (int ,int ,int ,int ,int ) ;
 int device_get_flags (int ) ;
 int device_get_unit (int ) ;
 int device_set_desc (int ,char*) ;
 scalar_t__ isa_get_vendorid (int ) ;
 int isa_set_logicalid (int ,int ) ;
 int isa_set_maddr (int ,int ) ;
 int isa_set_msize (int ,int ) ;
 int isa_set_port (int ,int ) ;
 int isa_set_portsize (int ,int ) ;
 int isa_set_vendorid (int ,int ) ;
 int vga_probe_unit (int ,TYPE_1__*,int ) ;

__attribute__((used)) static int
isavga_probe(device_t dev)
{
 video_adapter_t adp;
 int error;


 if (isa_get_vendorid(dev))
  return (ENXIO);

 error = vga_probe_unit(device_get_unit(dev), &adp, device_get_flags(dev));
 if (error == 0) {
  device_set_desc(dev, "Generic ISA VGA");
  bus_set_resource(dev, SYS_RES_IOPORT, 0,
     adp.va_io_base, adp.va_io_size);
  bus_set_resource(dev, SYS_RES_MEMORY, 0,
     adp.va_mem_base, adp.va_mem_size);
  isa_set_vendorid(dev, VGA_ID);
  isa_set_logicalid(dev, VGA_ID);






 }
 return (error);
}
