
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_softc {int hn_flags; int hn_ifp; } ;


 int ENXIO ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_LOCK_ASSERT (struct hn_softc*) ;
 int NDIS_RSS_FLAG_DISABLE ;
 int NDIS_RSS_FLAG_NONE ;
 scalar_t__ bootverbose ;
 int hn_rndis_conf_rss (struct hn_softc*,int ) ;
 int if_printf (int ,char*) ;

__attribute__((used)) static int
hn_rss_reconfig(struct hn_softc *sc)
{
 int error;

 HN_LOCK_ASSERT(sc);

 if ((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) == 0)
  return (ENXIO);
 if (bootverbose)
  if_printf(sc->hn_ifp, "disable RSS\n");
 error = hn_rndis_conf_rss(sc, NDIS_RSS_FLAG_DISABLE);
 if (error) {
  if_printf(sc->hn_ifp, "RSS disable failed\n");
  return (error);
 }





 if (bootverbose)
  if_printf(sc->hn_ifp, "reconfig RSS\n");
 error = hn_rndis_conf_rss(sc, NDIS_RSS_FLAG_NONE);
 if (error) {
  if_printf(sc->hn_ifp, "RSS reconfig failed\n");
  return (error);
 }
 return (0);
}
