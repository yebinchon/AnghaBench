
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int32_t ;
struct safe_softc {int sc_srcdmat; int sc_dstdmat; int sc_dev; int sc_ringalloc; } ;
struct safe_session {int ses_mlen; scalar_t__ ses_iv; } ;
struct TYPE_9__ {void** sa_saved_indigest; } ;
struct TYPE_8__ {int sa_cmd1; int sa_cmd0; } ;
struct TYPE_7__ {int d_csr; } ;
struct TYPE_6__ {scalar_t__ mapsize; } ;
struct safe_ringentry {scalar_t__ re_src_m; scalar_t__ re_dst_m; int re_flags; TYPE_4__ re_sastate; int * re_src_map; int * re_dst_map; TYPE_3__ re_sa; TYPE_2__ re_desc; TYPE_1__ re_dst; scalar_t__ re_crp; } ;
struct cryptop {int crp_flags; scalar_t__ crp_buf; struct cryptodesc* crp_desc; int crp_etype; int crp_session; } ;
struct cryptodesc {scalar_t__ crd_alg; int crd_inject; struct cryptodesc* crd_next; scalar_t__ crd_len; scalar_t__ crd_skip; } ;
typedef scalar_t__ caddr_t ;
struct TYPE_10__ {int st_peoperr; int st_obytes; int st_opackets; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CRYPTO_3DES_CBC ;
 scalar_t__ CRYPTO_AES_CBC ;
 scalar_t__ CRYPTO_DES_CBC ;
 int CRYPTO_F_IMBUF ;
 scalar_t__ CRYPTO_MD5_HMAC ;
 scalar_t__ CRYPTO_NULL_HMAC ;
 scalar_t__ CRYPTO_SHA1_HMAC ;
 int EIO ;
 int SAFE_PE_CSR_STATUS ;
 int SAFE_QFLAGS_COPYOUTICV ;
 int SAFE_QFLAGS_COPYOUTIV ;
 void* bswap32 (void*) ;
 int bus_dmamap_destroy (int ,int *) ;
 int bus_dmamap_sync (int ,int *,int) ;
 int bus_dmamap_unload (int ,int *) ;
 int crypto_copyback (int,scalar_t__,int ,int ,scalar_t__) ;
 int crypto_copydata (int,scalar_t__,scalar_t__,int,scalar_t__) ;
 int crypto_done (struct cryptop*) ;
 struct safe_session* crypto_get_driver_session (int ) ;
 int device_printf (int ,char*,int,int ,int ) ;
 int m_freem (scalar_t__) ;
 int safe_dma_sync (int *,int) ;
 TYPE_5__ safestats ;

__attribute__((used)) static void
safe_callback(struct safe_softc *sc, struct safe_ringentry *re)
{
 struct cryptop *crp = (struct cryptop *)re->re_crp;
 struct safe_session *ses;
 struct cryptodesc *crd;

 ses = crypto_get_driver_session(crp->crp_session);

 safestats.st_opackets++;
 safestats.st_obytes += re->re_dst.mapsize;

 safe_dma_sync(&sc->sc_ringalloc,
  BUS_DMASYNC_POSTREAD|BUS_DMASYNC_POSTWRITE);
 if (re->re_desc.d_csr & SAFE_PE_CSR_STATUS) {
  device_printf(sc->sc_dev, "csr 0x%x cmd0 0x%x cmd1 0x%x\n",
   re->re_desc.d_csr,
   re->re_sa.sa_cmd0, re->re_sa.sa_cmd1);
  safestats.st_peoperr++;
  crp->crp_etype = EIO;
 }
 if (re->re_dst_map != ((void*)0) && re->re_dst_map != re->re_src_map) {
  bus_dmamap_sync(sc->sc_dstdmat, re->re_dst_map,
      BUS_DMASYNC_POSTREAD);
  bus_dmamap_unload(sc->sc_dstdmat, re->re_dst_map);
  bus_dmamap_destroy(sc->sc_dstdmat, re->re_dst_map);
 }
 bus_dmamap_sync(sc->sc_srcdmat, re->re_src_map, BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(sc->sc_srcdmat, re->re_src_map);
 bus_dmamap_destroy(sc->sc_srcdmat, re->re_src_map);





 if ((crp->crp_flags & CRYPTO_F_IMBUF) && re->re_src_m != re->re_dst_m) {
  m_freem(re->re_src_m);
  crp->crp_buf = (caddr_t)re->re_dst_m;
 }

 if (re->re_flags & SAFE_QFLAGS_COPYOUTIV) {

  for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
   int ivsize;

   if (crd->crd_alg == CRYPTO_DES_CBC ||
       crd->crd_alg == CRYPTO_3DES_CBC) {
    ivsize = 2*sizeof(u_int32_t);
   } else if (crd->crd_alg == CRYPTO_AES_CBC) {
    ivsize = 4*sizeof(u_int32_t);
   } else
    continue;
   crypto_copydata(crp->crp_flags, crp->crp_buf,
       crd->crd_skip + crd->crd_len - ivsize, ivsize,
       (caddr_t)ses->ses_iv);
   break;
  }
 }

 if (re->re_flags & SAFE_QFLAGS_COPYOUTICV) {

  for (crd = crp->crp_desc; crd; crd = crd->crd_next) {
   if (!(crd->crd_alg == CRYPTO_MD5_HMAC ||
       crd->crd_alg == CRYPTO_SHA1_HMAC ||
       crd->crd_alg == CRYPTO_NULL_HMAC))
    continue;
   if (crd->crd_alg == CRYPTO_SHA1_HMAC) {




    re->re_sastate.sa_saved_indigest[0] =
        bswap32(re->re_sastate.sa_saved_indigest[0]);
    re->re_sastate.sa_saved_indigest[1] =
        bswap32(re->re_sastate.sa_saved_indigest[1]);
    re->re_sastate.sa_saved_indigest[2] =
        bswap32(re->re_sastate.sa_saved_indigest[2]);
   }
   crypto_copyback(crp->crp_flags, crp->crp_buf,
       crd->crd_inject, ses->ses_mlen,
       (caddr_t)re->re_sastate.sa_saved_indigest);
   break;
  }
 }
 crypto_done(crp);
}
