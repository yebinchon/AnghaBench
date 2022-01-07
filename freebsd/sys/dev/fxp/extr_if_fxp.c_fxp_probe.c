
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_ident {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct fxp_ident* fxp_find_ident (int ) ;

__attribute__((used)) static int
fxp_probe(device_t dev)
{
 const struct fxp_ident *ident;

 ident = fxp_find_ident(dev);
 if (ident != ((void*)0)) {
  device_set_desc(dev, ident->name);
  return (BUS_PROBE_DEFAULT);
 }
 return (ENXIO);
}
