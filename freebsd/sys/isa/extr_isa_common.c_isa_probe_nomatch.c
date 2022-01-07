
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 scalar_t__ bootverbose ;
 int bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 int isa_print_all_resources (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
isa_probe_nomatch(device_t dev, device_t child)
{
 if (bootverbose) {
  bus_print_child_header(dev, child);
  printf(" failed to probe");
  isa_print_all_resources(child);
  bus_print_child_footer(dev, child);
 }

 return;
}
