
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
typedef size_t u_int ;
typedef int phandle_t ;
typedef int pcell_t ;


 scalar_t__ OF_getencprop (int,char const*,int *,int) ;
 int OF_node_from_xref (int ) ;
 size_t nitems (char const**) ;

__attribute__((used)) static phandle_t
mii_fdt_get_phynode(phandle_t macnode)
{
 static const char *props[] = {
     "phy-handle", "phy", "phy-device"
 };
 pcell_t xref;
 u_int i;

 for (i = 0; i < nitems(props); ++i) {
  if (OF_getencprop(macnode, props[i], &xref, sizeof(xref)) > 0)
   return (OF_node_from_xref(xref));
 }
 return (-1);
}
