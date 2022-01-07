
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_transport_child {int qpcnt; int qpoff; int consumer; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct ntb_transport_child* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

__attribute__((used)) static int
ntb_transport_print_child(device_t dev, device_t child)
{
 struct ntb_transport_child *nc = device_get_ivars(child);
 int retval;

 retval = bus_print_child_header(dev, child);
 if (nc->qpcnt > 0) {
  printf(" queue %d", nc->qpoff);
  if (nc->qpcnt > 1)
   printf("-%d", nc->qpoff + nc->qpcnt - 1);
 }
 retval += printf(" at consumer %d", nc->consumer);
 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
