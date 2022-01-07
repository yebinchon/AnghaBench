
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dev; } ;
typedef int kobj_t ;


 int CS4281PCI_ACCAD ;
 int CS4281PCI_ACCDA ;
 int CS4281PCI_ACCTL ;
 int CS4281PCI_ACCTL_CRW ;
 int CS4281PCI_ACCTL_DCV ;
 int CS4281PCI_ACCTL_ESYN ;
 int CS4281PCI_ACCTL_VFRM ;
 int CS4281PCI_ACSDA ;
 int CS4281PCI_ACSTS ;
 int CS4281PCI_ACSTS_VSTS ;
 int cs4281_rd (struct sc_info*,int ) ;
 scalar_t__ cs4281_waitclr (struct sc_info*,int ,int,int) ;
 scalar_t__ cs4281_waitset (struct sc_info*,int ,int ,int) ;
 int cs4281_wr (struct sc_info*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cs4281_rdcd(kobj_t obj, void *devinfo, int regno)
{
    struct sc_info *sc = (struct sc_info *)devinfo;
    int codecno;

    codecno = regno >> 8;
    regno &= 0xff;


    cs4281_rd(sc, CS4281PCI_ACSDA);


    cs4281_wr(sc, CS4281PCI_ACCAD, regno);
    cs4281_wr(sc, CS4281PCI_ACCDA, 0);
    cs4281_wr(sc, CS4281PCI_ACCTL, CS4281PCI_ACCTL_ESYN |
       CS4281PCI_ACCTL_VFRM | CS4281PCI_ACCTL_DCV |
       CS4281PCI_ACCTL_CRW);


    if (cs4281_waitclr(sc, CS4281PCI_ACCTL, CS4281PCI_ACCTL_DCV, 250) == 0) {
 device_printf(sc->dev, "cs4281_rdcd: DCV did not go\n");
 return -1;
    }


    if (cs4281_waitset(sc, CS4281PCI_ACSTS, CS4281PCI_ACSTS_VSTS, 250) == 0) {
 device_printf(sc->dev,"cs4281_rdcd: VSTS did not come\n");
 return -1;
    }

    return cs4281_rd(sc, CS4281PCI_ACSDA);
}
