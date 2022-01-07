
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 char* agp_ati_match (int ) ;
 int device_set_desc (int ,char const*) ;

__attribute__((used)) static int
agp_ati_probe(device_t dev)
{
 const char *desc;

 desc = agp_ati_match(dev);
 if (desc) {
  device_set_desc(dev, desc);
  return 0;
 }

 return ENXIO;
}
