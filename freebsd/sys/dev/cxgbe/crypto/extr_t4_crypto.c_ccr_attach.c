
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ccr_softc {int iv_aad_buf; int sg_iv_aad; void* sg_dsgl; void* sg_ulptx; void* sg_crp; int lock; scalar_t__ tx_channel_id; TYPE_2__* adapter; scalar_t__ cid; int * rxq; int * txq; int dev; } ;
struct ccr_session {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int device_t ;
struct TYPE_3__ {int * rxq; int * ctrlq; } ;
struct TYPE_4__ {struct ccr_softc* ccr_softc; TYPE_1__ sge; } ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_AES_128_NIST_GMAC ;
 int CRYPTO_AES_192_NIST_GMAC ;
 int CRYPTO_AES_256_NIST_GMAC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_AES_CCM_16 ;
 int CRYPTO_AES_CCM_CBC_MAC ;
 int CRYPTO_AES_ICM ;
 int CRYPTO_AES_NIST_GCM_16 ;
 int CRYPTO_AES_XTS ;
 int CRYPTO_SHA1 ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA2_224 ;
 int CRYPTO_SHA2_224_HMAC ;
 int CRYPTO_SHA2_256 ;
 int CRYPTO_SHA2_256_HMAC ;
 int CRYPTO_SHA2_384 ;
 int CRYPTO_SHA2_384_HMAC ;
 int CRYPTO_SHA2_512 ;
 int CRYPTO_SHA2_512_HMAC ;
 int ENXIO ;
 int MAX_AAD_LEN ;
 int MAX_RX_PHYS_DSGL_SGE ;
 int MTX_DEF ;
 int M_CCR ;
 int M_WAITOK ;
 int TX_SGL_SEGS ;
 int ccr_sysctls (struct ccr_softc*) ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int malloc (int ,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 void* sglist_alloc (int ,int ) ;
 int sglist_build (int ,int ,int ) ;

__attribute__((used)) static int
ccr_attach(device_t dev)
{
 struct ccr_softc *sc;
 int32_t cid;

 sc = device_get_softc(dev);
 sc->dev = dev;
 sc->adapter = device_get_softc(device_get_parent(dev));
 sc->txq = &sc->adapter->sge.ctrlq[0];
 sc->rxq = &sc->adapter->sge.rxq[0];
 cid = crypto_get_driverid(dev, sizeof(struct ccr_session),
     CRYPTOCAP_F_HARDWARE);
 if (cid < 0) {
  device_printf(dev, "could not get crypto driver id\n");
  return (ENXIO);
 }
 sc->cid = cid;
 sc->adapter->ccr_softc = sc;


 sc->tx_channel_id = 0;

 mtx_init(&sc->lock, "ccr", ((void*)0), MTX_DEF);
 sc->sg_crp = sglist_alloc(TX_SGL_SEGS, M_WAITOK);
 sc->sg_ulptx = sglist_alloc(TX_SGL_SEGS, M_WAITOK);
 sc->sg_dsgl = sglist_alloc(MAX_RX_PHYS_DSGL_SGE, M_WAITOK);
 sc->iv_aad_buf = malloc(MAX_AAD_LEN, M_CCR, M_WAITOK);
 sc->sg_iv_aad = sglist_build(sc->iv_aad_buf, MAX_AAD_LEN, M_WAITOK);
 ccr_sysctls(sc);

 crypto_register(cid, CRYPTO_SHA1, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_224, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_256, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_384, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_512, 0, 0);
 crypto_register(cid, CRYPTO_SHA1_HMAC, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_224_HMAC, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_256_HMAC, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_384_HMAC, 0, 0);
 crypto_register(cid, CRYPTO_SHA2_512_HMAC, 0, 0);
 crypto_register(cid, CRYPTO_AES_CBC, 0, 0);
 crypto_register(cid, CRYPTO_AES_ICM, 0, 0);
 crypto_register(cid, CRYPTO_AES_NIST_GCM_16, 0, 0);
 crypto_register(cid, CRYPTO_AES_128_NIST_GMAC, 0, 0);
 crypto_register(cid, CRYPTO_AES_192_NIST_GMAC, 0, 0);
 crypto_register(cid, CRYPTO_AES_256_NIST_GMAC, 0, 0);
 crypto_register(cid, CRYPTO_AES_XTS, 0, 0);
 crypto_register(cid, CRYPTO_AES_CCM_16, 0, 0);
 crypto_register(cid, CRYPTO_AES_CCM_CBC_MAC, 0, 0);
 return (0);
}
