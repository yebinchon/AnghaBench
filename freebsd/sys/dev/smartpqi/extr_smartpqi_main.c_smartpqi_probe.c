
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ident {int desc; } ;
typedef int device_t ;


 int BUS_PROBE_VENDOR ;
 int ENXIO ;
 int device_set_desc (int ,int ) ;
 struct pqi_ident* pqi_find_ident (int ) ;

__attribute__((used)) static int
smartpqi_probe(device_t dev)
{
 struct pqi_ident *id;

 if ((id = pqi_find_ident(dev)) != ((void*)0)) {
  device_set_desc(dev, id->desc);
  return(BUS_PROBE_VENDOR);
 }

 return(ENXIO);
}
