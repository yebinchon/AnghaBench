
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
struct xrefinfo {int xref; } ;
typedef int phandle_t ;


 int FIND_BY_NODE ;
 int OF_getencprop (int ,char*,int *,int) ;
 scalar_t__ xref_init_done ;
 struct xrefinfo* xrefinfo_find (int ,int ) ;

phandle_t
OF_xref_from_node(phandle_t node)
{
 struct xrefinfo *xi;
 phandle_t xref;

 if (xref_init_done) {
  if ((xi = xrefinfo_find(node, FIND_BY_NODE)) == ((void*)0))
   return (node);
  return (xi->xref);
 }

 if (OF_getencprop(node, "phandle", &xref, sizeof(xref)) == -1 &&
     OF_getencprop(node, "ibm,phandle", &xref, sizeof(xref)) == -1 &&
     OF_getencprop(node, "linux,phandle", &xref, sizeof(xref)) == -1)
  return (node);
 return (xref);
}
