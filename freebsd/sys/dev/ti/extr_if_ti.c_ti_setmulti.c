
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_softc {struct ifnet* ti_ifp; } ;
struct ti_cmd_desc {int dummy; } ;
struct ifnet {int if_flags; } ;


 int CSR_READ_4 (struct ti_softc*,int ) ;
 int CSR_WRITE_4 (struct ti_softc*,int ,int) ;
 int IFF_ALLMULTI ;
 int TI_CMD_CODE_ALLMULTI_DIS ;
 int TI_CMD_CODE_ALLMULTI_ENB ;
 int TI_CMD_SET_ALLMULTI ;
 int TI_DO_CMD (int ,int ,int ) ;
 int TI_LOCK_ASSERT (struct ti_softc*) ;
 int TI_MB_HOSTINTR ;
 int if_foreach_llmaddr (struct ifnet*,int ,struct ti_softc*) ;
 int ti_add_mcast ;
 int ti_del_mcast ;

__attribute__((used)) static void
ti_setmulti(struct ti_softc *sc)
{
 struct ifnet *ifp;
 struct ti_cmd_desc cmd;
 uint32_t intrs;

 TI_LOCK_ASSERT(sc);

 ifp = sc->ti_ifp;

 if (ifp->if_flags & IFF_ALLMULTI) {
  TI_DO_CMD(TI_CMD_SET_ALLMULTI, TI_CMD_CODE_ALLMULTI_ENB, 0);
  return;
 } else {
  TI_DO_CMD(TI_CMD_SET_ALLMULTI, TI_CMD_CODE_ALLMULTI_DIS, 0);
 }


 intrs = CSR_READ_4(sc, TI_MB_HOSTINTR);
 CSR_WRITE_4(sc, TI_MB_HOSTINTR, 1);


 if_foreach_llmaddr(ifp, ti_del_mcast, sc);


 if_foreach_llmaddr(ifp, ti_add_mcast, sc);


 CSR_WRITE_4(sc, TI_MB_HOSTINTR, intrs);
}
