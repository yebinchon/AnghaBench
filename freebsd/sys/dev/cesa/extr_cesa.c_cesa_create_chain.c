
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct uio {int dummy; } ;
struct mbuf {int dummy; } ;
struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {int sc_data_dtag; } ;
struct cesa_request {int cr_dmap_loaded; TYPE_4__* cr_crp; int cr_dmap; scalar_t__ cr_mac; TYPE_3__* cr_enc; TYPE_2__* cr_cs; TYPE_1__* cr_csd; } ;
struct cesa_chain_info {int cci_config; int cci_error; scalar_t__ cci_mac; TYPE_3__* cci_enc; struct cesa_request* cci_cr; struct cesa_softc* cci_sc; } ;
struct TYPE_8__ {int crp_flags; int crp_ilen; scalar_t__ crp_buf; } ;
struct TYPE_7__ {scalar_t__ crd_alg; int crd_flags; } ;
struct TYPE_6__ {int cs_config; int cs_hiv_out; int cs_hiv_in; int cs_klen; int cs_key; int cs_aes_dkey; } ;
struct TYPE_5__ {int csd_hiv_out; int csd_hiv_in; int csd_key; } ;


 int BUS_DMA_NOWAIT ;
 int CESA_CSHD_DECRYPT ;
 int CESA_CSHD_ENC ;
 int CESA_CSHD_ENC_AND_MAC ;
 int CESA_CSHD_MAC ;
 int CESA_CSHD_MAC_AND_ENC ;
 int CESA_LOCK_ASSERT (struct cesa_softc*,int ) ;
 int CESA_MAX_HASH_LEN ;
 int CRD_F_ENCRYPT ;
 scalar_t__ CRYPTO_AES_CBC ;
 int CRYPTO_F_IMBUF ;
 int CRYPTO_F_IOV ;
 int ENOMEM ;
 int bus_dmamap_load (int ,int ,scalar_t__,int ,int ,struct cesa_chain_info*,int ) ;
 int bus_dmamap_load_mbuf (int ,int ,struct mbuf*,int ,struct cesa_chain_info*,int ) ;
 int bus_dmamap_load_uio (int ,int ,struct uio*,int ,struct cesa_chain_info*,int ) ;
 int cesa_append_tdesc (struct cesa_request*,struct cesa_tdma_desc*) ;
 int cesa_create_chain_cb ;
 int cesa_create_chain_cb2 ;
 struct cesa_tdma_desc* cesa_tdma_copyin_sa_data (struct cesa_softc*,struct cesa_request*) ;
 struct cesa_tdma_desc* cesa_tdma_copyout_sa_data (struct cesa_softc*,struct cesa_request*) ;
 int memcpy (int ,int ,int ) ;
 int sessions ;

__attribute__((used)) static int
cesa_create_chain(struct cesa_softc *sc, struct cesa_request *cr)
{
 struct cesa_chain_info cci;
 struct cesa_tdma_desc *ctd;
 uint32_t config;
 int error;

 error = 0;
 CESA_LOCK_ASSERT(sc, sessions);


 if (cr->cr_enc) {
  if (cr->cr_enc->crd_alg == CRYPTO_AES_CBC &&
      (cr->cr_enc->crd_flags & CRD_F_ENCRYPT) == 0)
   memcpy(cr->cr_csd->csd_key, cr->cr_cs->cs_aes_dkey,
       cr->cr_cs->cs_klen);
  else
   memcpy(cr->cr_csd->csd_key, cr->cr_cs->cs_key,
       cr->cr_cs->cs_klen);
 }

 if (cr->cr_mac) {
  memcpy(cr->cr_csd->csd_hiv_in, cr->cr_cs->cs_hiv_in,
      CESA_MAX_HASH_LEN);
  memcpy(cr->cr_csd->csd_hiv_out, cr->cr_cs->cs_hiv_out,
      CESA_MAX_HASH_LEN);
 }

 ctd = cesa_tdma_copyin_sa_data(sc, cr);
 if (!ctd)
  return (ENOMEM);

 cesa_append_tdesc(cr, ctd);


 config = cr->cr_cs->cs_config;

 if (cr->cr_enc && (cr->cr_enc->crd_flags & CRD_F_ENCRYPT) == 0)
  config |= CESA_CSHD_DECRYPT;
 if (cr->cr_enc && !cr->cr_mac)
  config |= CESA_CSHD_ENC;
 if (!cr->cr_enc && cr->cr_mac)
  config |= CESA_CSHD_MAC;
 if (cr->cr_enc && cr->cr_mac)
  config |= (config & CESA_CSHD_DECRYPT) ? CESA_CSHD_MAC_AND_ENC :
      CESA_CSHD_ENC_AND_MAC;


 cci.cci_sc = sc;
 cci.cci_cr = cr;
 cci.cci_enc = cr->cr_enc;
 cci.cci_mac = cr->cr_mac;
 cci.cci_config = config;
 cci.cci_error = 0;

 if (cr->cr_crp->crp_flags & CRYPTO_F_IOV)
  error = bus_dmamap_load_uio(sc->sc_data_dtag,
      cr->cr_dmap, (struct uio *)cr->cr_crp->crp_buf,
      cesa_create_chain_cb2, &cci, BUS_DMA_NOWAIT);
 else if (cr->cr_crp->crp_flags & CRYPTO_F_IMBUF)
  error = bus_dmamap_load_mbuf(sc->sc_data_dtag,
      cr->cr_dmap, (struct mbuf *)cr->cr_crp->crp_buf,
      cesa_create_chain_cb2, &cci, BUS_DMA_NOWAIT);
 else
  error = bus_dmamap_load(sc->sc_data_dtag,
      cr->cr_dmap, cr->cr_crp->crp_buf,
      cr->cr_crp->crp_ilen, cesa_create_chain_cb, &cci,
      BUS_DMA_NOWAIT);

 if (!error)
  cr->cr_dmap_loaded = 1;

 if (cci.cci_error)
  error = cci.cci_error;

 if (error)
  return (error);


 ctd = cesa_tdma_copyout_sa_data(sc, cr);
 if (!ctd)
  return (ENOMEM);

 cesa_append_tdesc(cr, ctd);

 return (0);
}
