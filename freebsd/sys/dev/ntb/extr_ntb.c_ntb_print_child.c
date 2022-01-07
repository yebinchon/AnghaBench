
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int mwcnt; int mwoff; int spadcnt; int spadoff; int dbcnt; int dboff; int function; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_domain (int ,int ) ;
 scalar_t__ bus_print_child_footer (int ,int ) ;
 int bus_print_child_header (int ,int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int) ;

int
ntb_print_child(device_t dev, device_t child)
{
 struct ntb_child *nc = device_get_ivars(child);
 int retval;

 retval = bus_print_child_header(dev, child);
 if (nc->mwcnt > 0) {
  printf(" mw %d", nc->mwoff);
  if (nc->mwcnt > 1)
   printf("-%d", nc->mwoff + nc->mwcnt - 1);
 }
 if (nc->spadcnt > 0) {
  printf(" spad %d", nc->spadoff);
  if (nc->spadcnt > 1)
   printf("-%d", nc->spadoff + nc->spadcnt - 1);
 }
 if (nc->dbcnt > 0) {
  printf(" db %d", nc->dboff);
  if (nc->dbcnt > 1)
   printf("-%d", nc->dboff + nc->dbcnt - 1);
 }
 retval += printf(" at function %d", nc->function);
 retval += bus_print_child_domain(dev, child);
 retval += bus_print_child_footer(dev, child);

 return (retval);
}
