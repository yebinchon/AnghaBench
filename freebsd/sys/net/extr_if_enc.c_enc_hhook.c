
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pfil_head {int dummy; } ;
struct osd {int dummy; } ;
struct ipsec_ctx_data {int af; int enc; int sav; TYPE_2__** mp; int inp; } ;
struct ifnet {int if_flags; } ;
struct enc_softc {struct ifnet* sc_ifp; } ;
typedef int int32_t ;
struct TYPE_4__ {int len; struct ifnet* rcvif; } ;
struct TYPE_5__ {TYPE_1__ m_pkthdr; } ;




 int EACCES ;
 int EINVAL ;
 int EPFNOSUPPORT ;


 int IFCOUNTER_IBYTES ;
 int IFCOUNTER_IPACKETS ;
 int IFCOUNTER_OBYTES ;
 int IFCOUNTER_OPACKETS ;
 int IFF_UP ;
 int IPSEC_ENC_AFTER_PFIL ;
 int IPSEC_ENC_BEFORE ;
 int PFIL_HOOKED_IN (struct pfil_head*) ;
 int PFIL_HOOKED_OUT (struct pfil_head*) ;
 int PFIL_IN ;
 int PFIL_OUT ;
 scalar_t__ PFIL_PASS ;
 int V_filter_mask_in ;
 int V_filter_mask_out ;
 struct pfil_head* V_inet6_pfil_head ;
 struct pfil_head* V_inet_pfil_head ;
 int enc_bpftap (struct ifnet*,TYPE_2__*,int ,int,int,int) ;
 int if_inc_counter (struct ifnet*,int ,int) ;
 scalar_t__ pfil_run_hooks (struct pfil_head*,TYPE_2__**,struct ifnet*,int,int ) ;

__attribute__((used)) static int
enc_hhook(int32_t hhook_type, int32_t hhook_id, void *udata, void *ctx_data,
    void *hdata, struct osd *hosd)
{
 struct ipsec_ctx_data *ctx;
 struct enc_softc *sc;
 struct ifnet *ifp, *rcvif;
 struct pfil_head *ph;
 int pdir;

 sc = (struct enc_softc *)udata;
 ifp = sc->sc_ifp;
 if ((ifp->if_flags & IFF_UP) == 0)
  return (0);

 ctx = (struct ipsec_ctx_data *)ctx_data;

 if (ctx->af != hhook_id)
  return (EPFNOSUPPORT);

 enc_bpftap(ifp, *ctx->mp, ctx->sav, hhook_type, ctx->enc, ctx->af);
 switch (hhook_type) {
 case 129:
  if (ctx->enc == IPSEC_ENC_BEFORE) {

   if_inc_counter(ifp, IFCOUNTER_IPACKETS, 1);
   if_inc_counter(ifp, IFCOUNTER_IBYTES,
       (*ctx->mp)->m_pkthdr.len);
  }
  if ((ctx->enc & V_filter_mask_in) == 0)
   return (0);
  pdir = PFIL_IN;
  break;
 case 128:
  if (ctx->enc == IPSEC_ENC_BEFORE) {

   if_inc_counter(ifp, IFCOUNTER_OPACKETS, 1);
   if_inc_counter(ifp, IFCOUNTER_OBYTES,
       (*ctx->mp)->m_pkthdr.len);
  }
  if ((ctx->enc & V_filter_mask_out) == 0)
   return (0);
  pdir = PFIL_OUT;
  break;
 default:
  return (EINVAL);
 }

 switch (hhook_id) {
 default:
  ph = ((void*)0);
 }
 if (ph == ((void*)0) || (pdir == PFIL_OUT && !PFIL_HOOKED_OUT(ph)) ||
     (pdir == PFIL_IN && !PFIL_HOOKED_IN(ph)))
  return (0);

 rcvif = (*ctx->mp)->m_pkthdr.rcvif;
 (*ctx->mp)->m_pkthdr.rcvif = ifp;
 if (pfil_run_hooks(ph, ctx->mp, ifp, pdir, ctx->inp) != PFIL_PASS) {
  *ctx->mp = ((void*)0);
  return (EACCES);
 }
 (*ctx->mp)->m_pkthdr.rcvif = rcvif;
 enc_bpftap(ifp, *ctx->mp, ctx->sav, hhook_type,
     IPSEC_ENC_AFTER_PFIL, ctx->af);
 return (0);
}
