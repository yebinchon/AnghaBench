
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int BUS_PROBE_GENERIC ;
 int ENXIO ;
 int OF_peer (int ) ;

__attribute__((used)) static int
bare_probe(platform_t plat)
{

 if (OF_peer(0) == -1)
  return (ENXIO);

 return (BUS_PROBE_GENERIC);
}
