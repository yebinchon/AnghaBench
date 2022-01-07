
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdacc_softc {int dev; int ** tags; } ;
typedef int * device_t ;


 int HDAC_UNSOL_INTR (int *,int) ;
 struct hdacc_softc* device_get_softc (int *) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static void
hdacc_unsol_intr(device_t dev, uint32_t resp)
{
 struct hdacc_softc *codec = device_get_softc(dev);
 device_t child;
 int tag;

 tag = resp >> 26;
 if ((child = codec->tags[tag]) != ((void*)0))
  HDAC_UNSOL_INTR(child, resp);
 else
  device_printf(codec->dev, "Unexpected unsolicited "
      "response with tag %d: %08x\n", tag, resp);
}
