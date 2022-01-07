
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hn_softc {int hn_prichan; int hn_ifp; } ;


 scalar_t__ bootverbose ;
 int hn_nvs_alloc_subchans (struct hn_softc*,int*) ;
 int hn_rndis_query_rsscaps (struct hn_softc*,int*) ;
 int if_printf (int ,char*,...) ;
 struct vmbus_channel** vmbus_subchan_get (int ,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static int
hn_synth_alloc_subchans(struct hn_softc *sc, int *nsubch)
{
 struct vmbus_channel **subchans;
 int nchan, rxr_cnt, error;

 nchan = *nsubch + 1;
 if (nchan == 1) {



  *nsubch = 0;
  return (0);
 }





 error = hn_rndis_query_rsscaps(sc, &rxr_cnt);
 if (error) {

  *nsubch = 0;
  return (0);
 }
 if (bootverbose) {
  if_printf(sc->hn_ifp, "RX rings offered %u, requested %d\n",
      rxr_cnt, nchan);
 }

 if (nchan > rxr_cnt)
  nchan = rxr_cnt;
 if (nchan == 1) {
  if_printf(sc->hn_ifp, "only 1 channel is supported, no vRSS\n");
  *nsubch = 0;
  return (0);
 }




 *nsubch = nchan - 1;
 error = hn_nvs_alloc_subchans(sc, nsubch);
 if (error || *nsubch == 0) {

  *nsubch = 0;
  return (0);
 }




 subchans = vmbus_subchan_get(sc->hn_prichan, *nsubch);
 vmbus_subchan_rel(subchans, *nsubch);
 return (0);
}
