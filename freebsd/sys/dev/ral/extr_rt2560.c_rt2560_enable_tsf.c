
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2560_softc {int dummy; } ;


 int RAL_WRITE (struct rt2560_softc*,int ,int) ;
 int RT2560_CSR14 ;
 int RT2560_ENABLE_TSF ;
 int RT2560_ENABLE_TSF_SYNC (int) ;

__attribute__((used)) static void
rt2560_enable_tsf(struct rt2560_softc *sc)
{
 RAL_WRITE(sc, RT2560_CSR14, 0);
 RAL_WRITE(sc, RT2560_CSR14,
     RT2560_ENABLE_TSF_SYNC(2) | RT2560_ENABLE_TSF);
}
