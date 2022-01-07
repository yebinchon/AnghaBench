
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct hme_softc {int dummy; } ;


 int CTR1 (int ,char*,int ) ;
 int HME_LOCK (struct hme_softc*) ;
 int HME_SEBI_STAT ;
 int HME_SEB_READ_4 (struct hme_softc*,int ) ;
 int HME_SEB_STAT_ALL_ERRORS ;
 int HME_SEB_STAT_HOSTTOTX ;
 int HME_SEB_STAT_RXTOHOST ;
 int HME_SEB_STAT_TXALL ;
 int HME_UNLOCK (struct hme_softc*) ;
 int KTR_HME ;
 int hme_eint (struct hme_softc*,int) ;
 int hme_rint (struct hme_softc*) ;
 int hme_tint (struct hme_softc*) ;

void
hme_intr(void *v)
{
 struct hme_softc *sc = (struct hme_softc *)v;
 u_int32_t status;

 HME_LOCK(sc);
 status = HME_SEB_READ_4(sc, HME_SEBI_STAT);
 CTR1(KTR_HME, "hme_intr: status %#x", (u_int)status);

 if ((status & HME_SEB_STAT_ALL_ERRORS) != 0)
  hme_eint(sc, status);

 if ((status & HME_SEB_STAT_RXTOHOST) != 0)
  hme_rint(sc);

 if ((status & (HME_SEB_STAT_TXALL | HME_SEB_STAT_HOSTTOTX)) != 0)
  hme_tint(sc);
 HME_UNLOCK(sc);
}
