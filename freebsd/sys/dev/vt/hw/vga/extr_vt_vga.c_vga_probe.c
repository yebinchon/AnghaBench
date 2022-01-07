
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {int dummy; } ;


 int CN_DEAD ;
 int CN_INTERNAL ;
 scalar_t__ vga_acpi_disabled () ;

__attribute__((used)) static int
vga_probe(struct vt_device *vd)
{

 return (vga_acpi_disabled() ? CN_DEAD : CN_INTERNAL);
}
