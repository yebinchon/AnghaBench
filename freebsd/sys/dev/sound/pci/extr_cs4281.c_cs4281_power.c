
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int power; } ;


 int CS4281PCI_CWPR ;
 int CS4281PCI_CWPR_MAGIC ;
 int CS4281PCI_EPPMC ;
 int CS4281PCI_EPPMC_FPDN ;
 int CS4281PCI_SPMC ;
 int CS4281PCI_SPMC_RSTN ;
 int DEB (int ) ;
 int cs4281_clr4 (struct sc_info*,int ,int ) ;
 int cs4281_set4 (struct sc_info*,int ,int ) ;
 int cs4281_wr (struct sc_info*,int ,int ) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
cs4281_power(struct sc_info *sc, int state)
{

    switch (state) {
    case 0:

        cs4281_wr(sc, CS4281PCI_CWPR, CS4281PCI_CWPR_MAGIC);

        cs4281_clr4(sc, CS4281PCI_EPPMC, CS4281PCI_EPPMC_FPDN);
        break;
    case 3:

     cs4281_set4(sc, CS4281PCI_EPPMC, CS4281PCI_EPPMC_FPDN);
     cs4281_clr4(sc, CS4281PCI_SPMC, CS4281PCI_SPMC_RSTN);
        break;
    }

    DEB(printf("cs4281_power %d -> %d\n", sc->power, state));
    sc->power = state;

    return 0;
}
