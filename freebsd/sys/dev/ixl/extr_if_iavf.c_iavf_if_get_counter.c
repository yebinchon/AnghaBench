
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ixl_vsi {int noproto; int oqdrops; int iqdrops; int omcasts; int imcasts; int obytes; int ibytes; int oerrors; int opackets; int ierrors; int ipackets; } ;
struct iavf_sc {struct ixl_vsi vsi; } ;
typedef int ift_counter ;
typedef int if_t ;
typedef int if_ctx_t ;
 int if_get_counter_default (int ,int) ;
 int iflib_get_ifp (int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;

__attribute__((used)) static uint64_t
iavf_if_get_counter(if_ctx_t ctx, ift_counter cnt)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;
 if_t ifp = iflib_get_ifp(ctx);

 switch (cnt) {
 case 135:
  return (vsi->ipackets);
 case 137:
  return (vsi->ierrors);
 case 129:
  return (vsi->opackets);
 case 131:
  return (vsi->oerrors);
 case 139:

  return (0);
 case 138:
  return (vsi->ibytes);
 case 132:
  return (vsi->obytes);
 case 136:
  return (vsi->imcasts);
 case 130:
  return (vsi->omcasts);
 case 134:
  return (vsi->iqdrops);
 case 128:
  return (vsi->oqdrops);
 case 133:
  return (vsi->noproto);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
