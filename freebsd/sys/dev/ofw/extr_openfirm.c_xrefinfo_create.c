
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
struct xrefinfo {scalar_t__ xref; scalar_t__ node; } ;
typedef scalar_t__ phandle_t ;


 int M_OFWPROP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int SLIST_INSERT_HEAD (int *,struct xrefinfo*,int ) ;
 struct xrefinfo* malloc (int,int ,int) ;
 int next_entry ;
 int xreflist ;

__attribute__((used)) static void
xrefinfo_create(phandle_t node)
{
 struct xrefinfo * xi;
 phandle_t child, xref;






 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  xrefinfo_create(child);
  if (OF_getencprop(child, "phandle", &xref, sizeof(xref)) ==
      -1 && OF_getencprop(child, "ibm,phandle", &xref,
      sizeof(xref)) == -1 && OF_getencprop(child,
      "linux,phandle", &xref, sizeof(xref)) == -1)
   continue;
  xi = malloc(sizeof(*xi), M_OFWPROP, M_WAITOK | M_ZERO);
  xi->node = child;
  xi->xref = xref;
  SLIST_INSERT_HEAD(&xreflist, xi, next_entry);
 }
}
