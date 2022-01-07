
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct hdac_softc {scalar_t__ unsolq_st; size_t* unsolq; TYPE_1__* codecs; int unsolq_rp; int unsolq_wp; } ;
typedef size_t nid_t ;
typedef int * device_t ;
struct TYPE_2__ {int * dev; } ;


 scalar_t__ HDAC_UNSOLQ_BUSY ;
 int HDAC_UNSOLQ_MAX ;
 scalar_t__ HDAC_UNSOLQ_READY ;
 int HDAC_UNSOL_INTR (int *,size_t) ;

__attribute__((used)) static int
hdac_unsolq_flush(struct hdac_softc *sc)
{
 device_t child;
 nid_t cad;
 uint32_t resp;
 int ret = 0;

 if (sc->unsolq_st == HDAC_UNSOLQ_READY) {
  sc->unsolq_st = HDAC_UNSOLQ_BUSY;
  while (sc->unsolq_rp != sc->unsolq_wp) {
   resp = sc->unsolq[sc->unsolq_rp++];
   sc->unsolq_rp %= HDAC_UNSOLQ_MAX;
   cad = sc->unsolq[sc->unsolq_rp++];
   sc->unsolq_rp %= HDAC_UNSOLQ_MAX;
   if ((child = sc->codecs[cad].dev) != ((void*)0))
    HDAC_UNSOL_INTR(child, resp);
   ret++;
  }
  sc->unsolq_st = HDAC_UNSOLQ_READY;
 }

 return (ret);
}
