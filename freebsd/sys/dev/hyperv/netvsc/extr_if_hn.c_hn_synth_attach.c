
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ndis_rssprm_toeplitz {scalar_t__* rss_ind; int rss_key; } ;
struct hn_softc {int hn_flags; scalar_t__ hn_caps; int hn_rx_ring_cnt; int hn_xvf_flags; int hn_prichan; scalar_t__ hn_rss_hcap; scalar_t__ hn_rss_hash; int hn_ifp; int hn_dev; scalar_t__ hn_rss_ind_size; struct ndis_rssprm_toeplitz hn_rss; } ;


 scalar_t__ ATTACHED_NVS ;
 scalar_t__ ATTACHED_RNDIS ;
 int ENXIO ;
 int HN_FLAG_HAS_RSSIND ;
 int HN_FLAG_HAS_RSSKEY ;
 int HN_FLAG_RXVF ;
 int HN_FLAG_SYNTH_ATTACHED ;
 int HN_XVFFLAG_ENABLED ;
 int KASSERT (int,char*) ;
 int NDIS_HASH_INDCNT ;
 int NDIS_RSS_FLAG_NONE ;
 scalar_t__ bootverbose ;
 scalar_t__ device_is_attached (int ) ;
 int hn_attach_subchans (struct hn_softc*) ;
 int hn_chan_attach (struct hn_softc*,int ) ;
 int hn_chan_detach (struct hn_softc*,int ) ;
 int hn_nvs_attach (struct hn_softc*,int) ;
 int hn_nvs_detach (struct hn_softc*) ;
 int hn_rndis_attach (struct hn_softc*,int,int*) ;
 int hn_rndis_conf_rss (struct hn_softc*,int ) ;
 int hn_rndis_detach (struct hn_softc*) ;
 int hn_rndis_init_fixat (struct hn_softc*,int) ;
 int hn_rss_ind_fixup (struct hn_softc*) ;
 int hn_rss_key_default ;
 int hn_set_ring_inuse (struct hn_softc*,int) ;
 int hn_set_txagg (struct hn_softc*) ;
 int hn_synth_alloc_subchans (struct hn_softc*,int*) ;
 int hn_synth_attachable (struct hn_softc*) ;
 int hn_synth_detach (struct hn_softc*) ;
 int hn_vf_rss_fixup (struct hn_softc*,int) ;
 int if_printf (int ,char*,...) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ rss_get_indirection_to_bucket (int) ;
 int rss_getkey (int ) ;

__attribute__((used)) static int
hn_synth_attach(struct hn_softc *sc, int mtu)
{



 struct ndis_rssprm_toeplitz *rss = &sc->hn_rss;
 int error, nsubch, nchan = 1, i, rndis_inited;
 uint32_t old_caps, attached = 0;

 KASSERT((sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) == 0,
     ("synthetic parts were attached"));

 if (!hn_synth_attachable(sc))
  return (ENXIO);


 old_caps = sc->hn_caps;
 sc->hn_caps = 0;


 sc->hn_rss_ind_size = 0;
 sc->hn_rss_hash = 0;
 sc->hn_rss_hcap = 0;




 error = hn_chan_attach(sc, sc->hn_prichan);
 if (error)
  goto failed;




 error = hn_nvs_attach(sc, mtu);
 if (error)
  goto failed;
 attached |= 0x0002;




 error = hn_rndis_attach(sc, mtu, &rndis_inited);
 if (rndis_inited)
  attached |= 0x0004;
 if (error)
  goto failed;




 if (device_is_attached(sc->hn_dev) && old_caps != sc->hn_caps) {
  if_printf(sc->hn_ifp, "caps mismatch old 0x%08x, new 0x%08x\n",
      old_caps, sc->hn_caps);
  error = ENXIO;
  goto failed;
 }
 nsubch = sc->hn_rx_ring_cnt - 1;
 error = hn_synth_alloc_subchans(sc, &nsubch);
 if (error)
  goto failed;

 sc->hn_flags |= HN_FLAG_SYNTH_ATTACHED;





 nchan = nsubch + 1;
 hn_set_ring_inuse(sc, nchan);
 if (nchan == 1) {

  goto back;
 }






 error = hn_attach_subchans(sc);
 if (error)
  goto failed;





 if ((sc->hn_flags & HN_FLAG_HAS_RSSKEY) == 0) {



  if (bootverbose)
   if_printf(sc->hn_ifp, "setup default RSS key\n");



  memcpy(rss->rss_key, hn_rss_key_default, sizeof(rss->rss_key));

  sc->hn_flags |= HN_FLAG_HAS_RSSKEY;
 }

 if ((sc->hn_flags & HN_FLAG_HAS_RSSIND) == 0) {




  if (bootverbose) {
   if_printf(sc->hn_ifp, "setup default RSS indirect "
       "table\n");
  }
  for (i = 0; i < NDIS_HASH_INDCNT; ++i) {
   uint32_t subidx;




   subidx = i;

   rss->rss_ind[i] = subidx % nchan;
  }
  sc->hn_flags |= HN_FLAG_HAS_RSSIND;
 } else {







  hn_rss_ind_fixup(sc);
 }

 sc->hn_rss_hash = sc->hn_rss_hcap;
 if ((sc->hn_flags & HN_FLAG_RXVF) ||
     (sc->hn_xvf_flags & HN_XVFFLAG_ENABLED)) {

  hn_vf_rss_fixup(sc, 0);
 }
 error = hn_rndis_conf_rss(sc, NDIS_RSS_FLAG_NONE);
 if (error)
  goto failed;
back:



 hn_set_txagg(sc);
 hn_rndis_init_fixat(sc, nchan);
 return (0);

failed:
 if (sc->hn_flags & HN_FLAG_SYNTH_ATTACHED) {
  hn_rndis_init_fixat(sc, nchan);
  hn_synth_detach(sc);
 } else {
  if (attached & 0x0004) {
   hn_rndis_init_fixat(sc, nchan);
   hn_rndis_detach(sc);
  }
  if (attached & 0x0002)
   hn_nvs_detach(sc);
  hn_chan_detach(sc, sc->hn_prichan);

  sc->hn_caps = old_caps;
 }
 return (error);



}
