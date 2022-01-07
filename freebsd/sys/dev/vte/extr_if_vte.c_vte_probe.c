
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vte_ident {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct vte_ident* vte_find_ident (int ) ;

__attribute__((used)) static int
vte_probe(device_t dev)
{
 const struct vte_ident *ident;

 ident = vte_find_ident(dev);
 if (ident != ((void*)0)) {
  device_set_desc(dev, ident->name);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
