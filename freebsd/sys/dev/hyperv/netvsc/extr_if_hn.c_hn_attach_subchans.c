
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmbus_channel {int dummy; } ;
struct hn_softc {int hn_rx_ring_inuse; int hn_ifp; int hn_prichan; } ;


 int KASSERT (int,char*) ;
 scalar_t__ bootverbose ;
 int hn_chan_attach (struct hn_softc*,struct vmbus_channel*) ;
 int if_printf (int ,char*,int) ;
 struct vmbus_channel** vmbus_subchan_get (int ,int) ;
 int vmbus_subchan_rel (struct vmbus_channel**,int) ;

__attribute__((used)) static int
hn_attach_subchans(struct hn_softc *sc)
{
 struct vmbus_channel **subchans;
 int subchan_cnt = sc->hn_rx_ring_inuse - 1;
 int i, error = 0;

 KASSERT(subchan_cnt > 0, ("no sub-channels"));


 subchans = vmbus_subchan_get(sc->hn_prichan, subchan_cnt);
 for (i = 0; i < subchan_cnt; ++i) {
  int error1;

  error1 = hn_chan_attach(sc, subchans[i]);
  if (error1) {
   error = error1;

  }
 }
 vmbus_subchan_rel(subchans, subchan_cnt);

 if (error) {
  if_printf(sc->hn_ifp, "sub-channels attach failed: %d\n", error);
 } else {
  if (bootverbose) {
   if_printf(sc->hn_ifp, "%d sub-channels attached\n",
       subchan_cnt);
  }
 }
 return (error);
}
