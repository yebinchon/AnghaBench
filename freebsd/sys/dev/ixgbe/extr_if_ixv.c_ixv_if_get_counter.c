
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct adapter {int imcasts; int obytes; int ibytes; int opackets; int ipackets; } ;
typedef int ift_counter ;
typedef int if_t ;
typedef int if_ctx_t ;







 int if_get_counter_default (int ,int) ;
 int iflib_get_ifp (int ) ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static uint64_t
ixv_if_get_counter(if_ctx_t ctx, ift_counter cnt)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 if_t ifp = iflib_get_ifp(ctx);

 switch (cnt) {
 case 130:
  return (adapter->ipackets);
 case 128:
  return (adapter->opackets);
 case 132:
  return (adapter->ibytes);
 case 129:
  return (adapter->obytes);
 case 131:
  return (adapter->imcasts);
 default:
  return (if_get_counter_default(ifp, cnt));
 }
}
