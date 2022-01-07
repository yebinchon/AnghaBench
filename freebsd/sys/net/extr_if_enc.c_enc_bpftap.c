
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct secasvar {scalar_t__ alg_enc; scalar_t__ alg_auth; int spi; } ;
struct mbuf {int dummy; } ;
struct ifnet {int if_bpf; } ;
struct enchdr {int af; int flags; int spi; } ;
typedef scalar_t__ int32_t ;
typedef int hdr ;


 scalar_t__ HHOOK_TYPE_IPSEC_IN ;
 scalar_t__ HHOOK_TYPE_IPSEC_OUT ;
 int M_AUTH ;
 int M_CONF ;
 scalar_t__ SADB_AALG_NONE ;
 scalar_t__ SADB_EALG_NONE ;
 int V_bpf_mask_in ;
 int V_bpf_mask_out ;
 int bpf_mtap2 (int ,struct enchdr*,int,struct mbuf*) ;
 scalar_t__ bpf_peers_present (int ) ;

__attribute__((used)) static void
enc_bpftap(struct ifnet *ifp, struct mbuf *m, const struct secasvar *sav,
    int32_t hhook_type, uint8_t enc, uint8_t af)
{
 struct enchdr hdr;

 if (hhook_type == HHOOK_TYPE_IPSEC_IN &&
     (enc & V_bpf_mask_in) == 0)
  return;
 else if (hhook_type == HHOOK_TYPE_IPSEC_OUT &&
     (enc & V_bpf_mask_out) == 0)
  return;
 if (bpf_peers_present(ifp->if_bpf) == 0)
  return;
 hdr.af = af;
 hdr.spi = sav->spi;
 hdr.flags = 0;
 if (sav->alg_enc != SADB_EALG_NONE)
  hdr.flags |= M_CONF;
 if (sav->alg_auth != SADB_AALG_NONE)
  hdr.flags |= M_AUTH;
 bpf_mtap2(ifp->if_bpf, &hdr, sizeof(hdr), m);
}
