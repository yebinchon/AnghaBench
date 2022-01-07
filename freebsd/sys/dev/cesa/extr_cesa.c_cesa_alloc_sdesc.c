
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cesa_softc {int sc_dev; } ;
struct cesa_sa_desc {TYPE_1__* csd_cshd; } ;
struct cesa_request {int cr_sdesc; } ;
struct TYPE_2__ {scalar_t__ cshd_mac_dlen; scalar_t__ cshd_mac_src; void* cshd_mac_iv_out; void* cshd_mac_iv_in; void* cshd_mac_dst; scalar_t__ cshd_enc_dlen; scalar_t__ cshd_enc_dst; scalar_t__ cshd_enc_src; void* cshd_enc_iv_buf; void* cshd_enc_iv; void* cshd_enc_key; } ;


 int CESA_GENERIC_ALLOC_LOCKED (struct cesa_softc*,struct cesa_sa_desc*,int ) ;
 void* CESA_SA_DATA (int ) ;
 int STAILQ_INSERT_TAIL (int *,struct cesa_sa_desc*,int ) ;
 int csd_hash ;
 int csd_hiv_in ;
 int csd_hiv_out ;
 int csd_iv ;
 int csd_key ;
 int csd_stq ;
 int device_printf (int ,char*) ;
 int sdesc ;

__attribute__((used)) static struct cesa_sa_desc *
cesa_alloc_sdesc(struct cesa_softc *sc, struct cesa_request *cr)
{
 struct cesa_sa_desc *csd;

 CESA_GENERIC_ALLOC_LOCKED(sc, csd, sdesc);
 if (!csd) {
  device_printf(sc->sc_dev, "SA descriptors pool exhaused. "
      "Consider increasing CESA_SA_DESCRIPTORS.\n");
  return (((void*)0));
 }

 STAILQ_INSERT_TAIL(&cr->cr_sdesc, csd, csd_stq);


 csd->csd_cshd->cshd_enc_key = CESA_SA_DATA(csd_key);
 csd->csd_cshd->cshd_enc_iv = CESA_SA_DATA(csd_iv);
 csd->csd_cshd->cshd_enc_iv_buf = CESA_SA_DATA(csd_iv);
 csd->csd_cshd->cshd_enc_src = 0;
 csd->csd_cshd->cshd_enc_dst = 0;
 csd->csd_cshd->cshd_enc_dlen = 0;
 csd->csd_cshd->cshd_mac_dst = CESA_SA_DATA(csd_hash);
 csd->csd_cshd->cshd_mac_iv_in = CESA_SA_DATA(csd_hiv_in);
 csd->csd_cshd->cshd_mac_iv_out = CESA_SA_DATA(csd_hiv_out);
 csd->csd_cshd->cshd_mac_src = 0;
 csd->csd_cshd->cshd_mac_dlen = 0;

 return (csd);
}
