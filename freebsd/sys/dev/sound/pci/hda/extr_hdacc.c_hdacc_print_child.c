
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_fg {int nid; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct hdacc_fg* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
hdacc_print_child(device_t dev, device_t child)
{
 struct hdacc_fg *fg = device_get_ivars(child);
 int retval;

 retval = bus_print_child_header(dev, child);
 retval += printf(" at nid %d", fg->nid);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
