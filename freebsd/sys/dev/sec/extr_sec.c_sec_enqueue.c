
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_softc {int dummy; } ;
struct sec_desc {TYPE_1__* sd_desc; } ;
struct TYPE_2__ {int shd_eu_sel1; int shd_eu_sel0; } ;


 int SEC_DESC_READY2QUEUED (struct sec_softc*) ;
 struct sec_desc* SEC_GET_READY_DESC (struct sec_softc*) ;
 int SEC_LOCK (struct sec_softc*,int ) ;
 int SEC_PUT_BACK_READY_DESC (struct sec_softc*) ;
 scalar_t__ SEC_READY_DESC_CNT (struct sec_softc*) ;
 int SEC_UNLOCK (struct sec_softc*,int ) ;
 int controller ;
 int descriptors ;
 scalar_t__ sec_enqueue_desc (struct sec_softc*,struct sec_desc*,int) ;
 int sec_eu_channel (struct sec_softc*,int ) ;

__attribute__((used)) static void
sec_enqueue(struct sec_softc *sc)
{
 struct sec_desc *desc;
 int ch0, ch1;

 SEC_LOCK(sc, descriptors);
 SEC_LOCK(sc, controller);

 while (SEC_READY_DESC_CNT(sc) > 0) {
  desc = SEC_GET_READY_DESC(sc);

  ch0 = sec_eu_channel(sc, desc->sd_desc->shd_eu_sel0);
  ch1 = sec_eu_channel(sc, desc->sd_desc->shd_eu_sel1);





  if (ch0 >= 0 && ch0 == ch1) {
   if (sec_enqueue_desc(sc, desc, ch0) >= 0) {
    SEC_DESC_READY2QUEUED(sc);
    continue;
   }
  }





  if ((ch0 >= 0 && ch1 < 0) || (ch1 >= 0 && ch0 < 0)) {
   if (sec_enqueue_desc(sc, desc, (ch0 >= 0) ? ch0 : ch1)
       >= 0) {
    SEC_DESC_READY2QUEUED(sc);
    continue;
   }
  }





  if (ch0 < 0 && ch1 < 0) {
   if (sec_enqueue_desc(sc, desc, -1) >= 0) {
    SEC_DESC_READY2QUEUED(sc);
    continue;
   }
  }


  SEC_PUT_BACK_READY_DESC(sc);
  break;
 }

 SEC_UNLOCK(sc, controller);
 SEC_UNLOCK(sc, descriptors);
}
