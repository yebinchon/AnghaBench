
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alc_ident {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct alc_ident* alc_find_ident (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
alc_probe(device_t dev)
{
 struct alc_ident *ident;

 ident = alc_find_ident(dev);
 if (ident != ((void*)0)) {
  device_set_desc(dev, ident->name);
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}
