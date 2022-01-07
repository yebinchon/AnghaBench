
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct card_type {int name; } ;
typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 struct card_type* csa_findcard (int ) ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
csa_probe(device_t dev)
{
 struct card_type *card;

 card = csa_findcard(dev);
 if (card) {
  device_set_desc(dev, card->name);
  return BUS_PROBE_DEFAULT;
 }
 return ENXIO;
}
