
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xrefinfo {int node; } ;
typedef int phandle_t ;


 int FIND_BY_XREF ;
 int OF_child_xref_phandle (int ,int) ;
 int OF_peer (int ) ;
 scalar_t__ xref_init_done ;
 struct xrefinfo* xrefinfo_find (int,int ) ;

phandle_t
OF_node_from_xref(phandle_t xref)
{
 struct xrefinfo *xi;
 phandle_t node;

 if (xref_init_done) {
  if ((xi = xrefinfo_find(xref, FIND_BY_XREF)) == ((void*)0))
   return (xref);
  return (xi->node);
 }

 if ((node = OF_child_xref_phandle(OF_peer(0), xref)) == -1)
  return (xref);
 return (node);
}
