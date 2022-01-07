
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct legacy_device {int lg_pcibus; } ;
typedef int device_t ;


 struct legacy_device* DEVTOAT (int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 scalar_t__ printf (char*,...) ;

__attribute__((used)) static int
legacy_print_child(device_t bus, device_t child)
{
 struct legacy_device *atdev = DEVTOAT(child);
 int retval = 0;

 retval += bus_print_child_header(bus, child);
 if (atdev->lg_pcibus != -1)
  retval += printf(" pcibus %d", atdev->lg_pcibus);
 retval += printf("\n");

 return (retval);
}
