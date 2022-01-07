
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aue_softc {int sc_flags; } ;


 int AUE_REG_1D ;
 int AUE_REG_7B ;
 int AUE_REG_81 ;
 int HAS_HOME_PNA ;
 int aue_csr_write_1 (struct aue_softc*,int ,int) ;
 scalar_t__ mii_mode ;

__attribute__((used)) static void
aue_reset_pegasus_II(struct aue_softc *sc)
{

 aue_csr_write_1(sc, AUE_REG_1D, 0);
 aue_csr_write_1(sc, AUE_REG_7B, 2);





  aue_csr_write_1(sc, AUE_REG_81, 2);
}
