
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrefinfo {int xref; } ;
typedef int phandle_t ;
typedef scalar_t__ device_t ;


 int FIND_BY_DEV ;
 int panic (char*) ;
 scalar_t__ xref_init_done ;
 struct xrefinfo* xrefinfo_find (uintptr_t,int ) ;

phandle_t
OF_xref_from_device(device_t dev)
{
 struct xrefinfo *xi;

 if (xref_init_done) {
  if ((xi = xrefinfo_find((uintptr_t)dev, FIND_BY_DEV)) == ((void*)0))
   return (0);
  return (xi->xref);
 }
 panic("Attempt to find xref before xreflist_init");
}
