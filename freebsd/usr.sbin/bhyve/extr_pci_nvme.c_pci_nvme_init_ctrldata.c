
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvme_controller_data {int vid; int ssvid; int rab; int* ieee; int mdts; int ver; int oacs; int acl; int aerl; int npss; int wctemp; int sqes; int cqes; int nn; int fna; TYPE_1__* power_state; scalar_t__ elpe; scalar_t__ lpa; scalar_t__ mic; scalar_t__ fr; scalar_t__ mn; } ;
struct pci_nvme_softc {struct nvme_controller_data ctrldata; } ;
struct TYPE_2__ {int mp; } ;


 int NVME_CTRLR_DATA_CQES_MAX_SHIFT ;
 int NVME_CTRLR_DATA_CQES_MIN_SHIFT ;
 int NVME_CTRLR_DATA_OACS_FORMAT_SHIFT ;
 int NVME_CTRLR_DATA_SQES_MAX_SHIFT ;
 int NVME_CTRLR_DATA_SQES_MIN_SHIFT ;
 int cpywithpad (char*,int,char*,char) ;

__attribute__((used)) static void
pci_nvme_init_ctrldata(struct pci_nvme_softc *sc)
{
 struct nvme_controller_data *cd = &sc->ctrldata;

 cd->vid = 0xFB5D;
 cd->ssvid = 0x0000;

 cpywithpad((char *)cd->mn, sizeof(cd->mn), "bhyve-NVMe", ' ');
 cpywithpad((char *)cd->fr, sizeof(cd->fr), "1.0", ' ');


 cd->rab = 4;


 cd->ieee[0] = 0x58;
 cd->ieee[1] = 0x9c;
 cd->ieee[2] = 0xfc;

 cd->mic = 0;

 cd->mdts = 9;

 cd->ver = 0x00010300;

 cd->oacs = 1 << NVME_CTRLR_DATA_OACS_FORMAT_SHIFT;
 cd->acl = 2;
 cd->aerl = 4;

 cd->lpa = 0;
 cd->elpe = 0;
 cd->npss = 1;


 cd->wctemp = 0x0157;

 cd->sqes = (6 << NVME_CTRLR_DATA_SQES_MAX_SHIFT) |
     (6 << NVME_CTRLR_DATA_SQES_MIN_SHIFT);
 cd->cqes = (4 << NVME_CTRLR_DATA_CQES_MAX_SHIFT) |
     (4 << NVME_CTRLR_DATA_CQES_MIN_SHIFT);
 cd->nn = 1;

 cd->fna = 0x03;

 cd->power_state[0].mp = 10;
}
