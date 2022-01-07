
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rxref ;
typedef scalar_t__ phandle_t ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;

__attribute__((used)) static phandle_t
OF_child_xref_phandle(phandle_t parent, phandle_t xref)
{
 phandle_t child, rxref;







 for (child = OF_child(parent); child != 0; child = OF_peer(child)) {
  rxref = OF_child_xref_phandle(child, xref);
  if (rxref != -1)
   return (rxref);

  if (OF_getencprop(child, "phandle", &rxref, sizeof(rxref)) ==
      -1 && OF_getencprop(child, "ibm,phandle", &rxref,
      sizeof(rxref)) == -1 && OF_getencprop(child,
      "linux,phandle", &rxref, sizeof(rxref)) == -1)
   continue;

  if (rxref == xref)
   return (child);
 }

 return (-1);
}
