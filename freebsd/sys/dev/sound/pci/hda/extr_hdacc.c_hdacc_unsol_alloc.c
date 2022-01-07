
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_softc {int ** tags; } ;
typedef int * device_t ;


 int HDAC_UNSOL_ALLOC (int ,int *,int) ;
 int device_get_parent (int *) ;
 struct hdacc_softc* device_get_softc (int *) ;

__attribute__((used)) static int
hdacc_unsol_alloc(device_t dev, device_t child, int wanted)
{
 struct hdacc_softc *codec = device_get_softc(dev);
 int tag;

 wanted &= 0x3f;
 tag = wanted;
 do {
  if (codec->tags[tag] == ((void*)0)) {
   codec->tags[tag] = child;
   HDAC_UNSOL_ALLOC(device_get_parent(dev), dev, tag);
   return (tag);
  }
  tag++;
  tag &= 0x3f;
 } while (tag != wanted);
 return (-1);
}
