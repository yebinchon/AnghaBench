
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_4__ {int size; int sectsz; int sectsz_bits; } ;
struct pci_nvme_softc {TYPE_2__ nvstore; TYPE_1__* nsc_pi; } ;
struct nvme_namespace_data {int nsze; int ncap; int nuse; int* lbaf; int eui64; scalar_t__ flbas; scalar_t__ nlbaf; } ;
struct TYPE_3__ {int pi_func; int pi_slot; int pi_bus; } ;


 int NVME_NS_DATA_LBAF_LBADS_SHIFT ;
 int OUI_FREEBSD_NVME_LOW ;
 int asprintf (char**,char*,int ,int ,int ,int ) ;
 int be64enc (int ,int) ;
 int crc16 (int ,char*,int ) ;
 int free (char*) ;
 int strlen (char*) ;
 int vmname ;

__attribute__((used)) static void
pci_nvme_init_nsdata(struct pci_nvme_softc *sc,
    struct nvme_namespace_data *nd, uint32_t nsid,
    uint64_t eui64)
{

 nd->nsze = sc->nvstore.size / sc->nvstore.sectsz;
 nd->ncap = nd->nsze;
 nd->nuse = nd->nsze;


 nd->nlbaf = 0;
 nd->flbas = 0;


 if (eui64 == 0) {
  char *data = ((void*)0);

  asprintf(&data, "%s%u%u%u", vmname, sc->nsc_pi->pi_bus,
      sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);

  if (data != ((void*)0)) {
   eui64 = OUI_FREEBSD_NVME_LOW | crc16(0, data, strlen(data));
   free(data);
  }
  eui64 = (eui64 << 16) | (nsid & 0xffff);
 }
 be64enc(nd->eui64, eui64);


 nd->lbaf[0] = sc->nvstore.sectsz_bits << NVME_NS_DATA_LBAF_LBADS_SHIFT;
}
