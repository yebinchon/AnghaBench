
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpi_device {int qd_pcibus; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct qpi_device* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
qpi_print_child(device_t bus, device_t child)
{
 struct qpi_device *qdev;
 int retval = 0;

 qdev = device_get_ivars(child);
 retval += bus_print_child_header(bus, child);
 if (qdev->qd_pcibus != -1)
  retval += printf(" pcibus %d", qdev->qd_pcibus);
 retval += bus_print_child_footer(bus, child);

 return (retval);
}
