
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrefinfo {int * dev; } ;
typedef int phandle_t ;
typedef int * device_t ;


 int FIND_BY_XREF ;
 int panic (char*) ;
 scalar_t__ xref_init_done ;
 struct xrefinfo* xrefinfo_find (int ,int ) ;

device_t
OF_device_from_xref(phandle_t xref)
{
 struct xrefinfo *xi;

 if (xref_init_done) {
  if ((xi = xrefinfo_find(xref, FIND_BY_XREF)) == ((void*)0))
   return (((void*)0));
  return (xi->dev);
 }
 panic("Attempt to find device before xreflist_init");
}
