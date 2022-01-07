
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int IWN_CLRBITS (struct iwn_softc*,int ,int ) ;
 int IWN_GP_CNTRL ;
 int IWN_GP_CNTRL_MAC_ACCESS_REQ ;

__attribute__((used)) static __inline void
iwn_nic_unlock(struct iwn_softc *sc)
{
 IWN_CLRBITS(sc, IWN_GP_CNTRL, IWN_GP_CNTRL_MAC_ACCESS_REQ);
}
