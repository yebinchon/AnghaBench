
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {int dummy; } ;


 int DELAY (int) ;
 int ETIMEDOUT ;
 int IWN_GP_CNTRL ;
 int IWN_GP_CNTRL_MAC_ACCESS_ENA ;
 int IWN_GP_CNTRL_MAC_ACCESS_REQ ;
 int IWN_GP_CNTRL_SLEEP ;
 int IWN_READ (struct iwn_softc*,int ) ;
 int IWN_SETBITS (struct iwn_softc*,int ,int ) ;

__attribute__((used)) static int
iwn_nic_lock(struct iwn_softc *sc)
{
 int ntries;


 IWN_SETBITS(sc, IWN_GP_CNTRL, IWN_GP_CNTRL_MAC_ACCESS_REQ);


 for (ntries = 0; ntries < 1000; ntries++) {
  if ((IWN_READ(sc, IWN_GP_CNTRL) &
       (IWN_GP_CNTRL_MAC_ACCESS_ENA | IWN_GP_CNTRL_SLEEP)) ==
      IWN_GP_CNTRL_MAC_ACCESS_ENA)
   return 0;
  DELAY(10);
 }
 return ETIMEDOUT;
}
