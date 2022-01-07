
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfe_desc32* jdesc32; struct nfe_desc64* jdesc64; struct nfe_rx_data* jdata; } ;
struct nfe_softc {int nfe_flags; TYPE_1__ jrxq; } ;
struct nfe_rx_data {int paddr; struct mbuf* m; } ;
struct nfe_desc64 {void* flags; void* length; void** physaddr; } ;
struct nfe_desc32 {void* flags; void* length; } ;
struct mbuf {int m_len; } ;


 int NFE_40BIT_ADDR ;
 int NFE_ADDR_HI (int ) ;
 int NFE_ADDR_LO (int ) ;
 int NFE_RX_READY ;
 void* htole16 (int ) ;
 void* htole32 (int ) ;

__attribute__((used)) static __inline void
nfe_discard_jrxbuf(struct nfe_softc *sc, int idx)
{
 struct nfe_desc32 *desc32;
 struct nfe_desc64 *desc64;
 struct nfe_rx_data *data;
 struct mbuf *m;

 data = &sc->jrxq.jdata[idx];
 m = data->m;

 if (sc->nfe_flags & NFE_40BIT_ADDR) {
  desc64 = &sc->jrxq.jdesc64[idx];

  desc64->physaddr[0] = htole32(NFE_ADDR_HI(data->paddr));
  desc64->physaddr[1] = htole32(NFE_ADDR_LO(data->paddr));
  desc64->length = htole16(m->m_len);
  desc64->flags = htole16(NFE_RX_READY);
 } else {
  desc32 = &sc->jrxq.jdesc32[idx];
  desc32->length = htole16(m->m_len);
  desc32->flags = htole16(NFE_RX_READY);
 }
}
