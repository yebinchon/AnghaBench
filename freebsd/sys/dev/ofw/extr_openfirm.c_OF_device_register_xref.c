
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrefinfo {int dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int FIND_BY_XREF ;
 int panic (char*) ;
 scalar_t__ xref_init_done ;
 int xrefinfo_add (int ,int ,int ) ;
 struct xrefinfo* xrefinfo_find (int ,int ) ;

int
OF_device_register_xref(phandle_t xref, device_t dev)
{
 struct xrefinfo *xi;







 if (xref_init_done) {
  if ((xi = xrefinfo_find(xref, FIND_BY_XREF)) == ((void*)0))
   xrefinfo_add(xref, xref, dev);
  else
   xi->dev = dev;
  return (0);
 }
 panic("Attempt to register device before xreflist_init");
}
