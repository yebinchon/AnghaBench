
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmctx {int dummy; } ;
struct pci_devinst {int pi_slot; int pi_func; struct e82545_softc* pi_arg; } ;
struct TYPE_2__ {int octet; } ;
struct e82545_softc {int * esc_be; TYPE_1__ esc_mac; int esc_tx_tid; int esc_tx_cond; int esc_rx_cond; int esc_mtx; struct vmctx* esc_ctx; struct pci_devinst* esc_pi; } ;
typedef int nstr ;


 int DPRINTF (char*,char*) ;
 int E82545_BAR_FLASH ;
 int E82545_BAR_FLASH_LEN ;
 int E82545_BAR_IO ;
 int E82545_BAR_IO_LEN ;
 int E82545_BAR_REGISTER ;
 int E82545_BAR_REGISTER_LEN ;
 int E82545_DEV_ID_82545EM_COPPER ;
 int E82545_SUBDEV_ID ;
 int E82545_VENDOR_ID_INTEL ;
 int PCIBAR_IO ;
 int PCIBAR_MEM32 ;
 int PCIC_NETWORK ;
 int PCIM_HDRTYPE_NORMAL ;
 int PCIR_CLASS ;
 int PCIR_DEVICE ;
 int PCIR_HDRTYPE ;
 int PCIR_INTPIN ;
 int PCIR_SUBCLASS ;
 int PCIR_SUBDEV_0 ;
 int PCIR_SUBVEND_0 ;
 int PCIR_VENDOR ;
 int PCIS_NETWORK_ETHERNET ;
 struct e82545_softc* calloc (int,int) ;
 int e82545_reset (struct e82545_softc*,int ) ;
 int e82545_rx_callback ;
 int e82545_tx_thread ;
 int free (char*) ;
 int net_genmac (struct pci_devinst*,int ) ;
 int net_parsemac (char*,int ) ;
 int netbe_init (int **,char*,int ,struct e82545_softc*) ;
 int netbe_rx_enable (int *) ;
 int pci_emul_alloc_bar (struct pci_devinst*,int ,int ,int ) ;
 int pci_lintr_request (struct pci_devinst*) ;
 int pci_set_cfgdata16 (struct pci_devinst*,int ,int ) ;
 int pci_set_cfgdata8 (struct pci_devinst*,int ,int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,struct e82545_softc*) ;
 int pthread_mutex_init (int *,int *) ;
 int pthread_set_name_np (int ,char*) ;
 int snprintf (char*,int,char*,int,int) ;
 char* strdup (char*) ;
 int strsep (char**,char*) ;

__attribute__((used)) static int
e82545_init(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
 char nstr[80];
 struct e82545_softc *sc;
 char *devname;
 char *vtopts;
 int mac_provided;

 DPRINTF("Loading with options: %s\r\n", opts);


 sc = calloc(1, sizeof(*sc));

 pi->pi_arg = sc;
 sc->esc_pi = pi;
 sc->esc_ctx = ctx;

 pthread_mutex_init(&sc->esc_mtx, ((void*)0));
 pthread_cond_init(&sc->esc_rx_cond, ((void*)0));
 pthread_cond_init(&sc->esc_tx_cond, ((void*)0));
 pthread_create(&sc->esc_tx_tid, ((void*)0), e82545_tx_thread, sc);
 snprintf(nstr, sizeof(nstr), "e82545-%d:%d tx", pi->pi_slot,
     pi->pi_func);
        pthread_set_name_np(sc->esc_tx_tid, nstr);

 pci_set_cfgdata16(pi, PCIR_DEVICE, E82545_DEV_ID_82545EM_COPPER);
 pci_set_cfgdata16(pi, PCIR_VENDOR, E82545_VENDOR_ID_INTEL);
 pci_set_cfgdata8(pi, PCIR_CLASS, PCIC_NETWORK);
 pci_set_cfgdata8(pi, PCIR_SUBCLASS, PCIS_NETWORK_ETHERNET);
 pci_set_cfgdata16(pi, PCIR_SUBDEV_0, E82545_SUBDEV_ID);
 pci_set_cfgdata16(pi, PCIR_SUBVEND_0, E82545_VENDOR_ID_INTEL);

 pci_set_cfgdata8(pi, PCIR_HDRTYPE, PCIM_HDRTYPE_NORMAL);
 pci_set_cfgdata8(pi, PCIR_INTPIN, 0x1);



 pci_lintr_request(pi);

 pci_emul_alloc_bar(pi, E82545_BAR_REGISTER, PCIBAR_MEM32,
  E82545_BAR_REGISTER_LEN);
 pci_emul_alloc_bar(pi, E82545_BAR_FLASH, PCIBAR_MEM32,
  E82545_BAR_FLASH_LEN);
 pci_emul_alloc_bar(pi, E82545_BAR_IO, PCIBAR_IO,
  E82545_BAR_IO_LEN);





 mac_provided = 0;
 sc->esc_be = ((void*)0);
 if (opts != ((void*)0)) {
  int err;

  devname = vtopts = strdup(opts);
  (void) strsep(&vtopts, ",");

  if (vtopts != ((void*)0)) {
   err = net_parsemac(vtopts, sc->esc_mac.octet);
   if (err != 0) {
    free(devname);
    return (err);
   }
   mac_provided = 1;
  }

  err = netbe_init(&sc->esc_be, devname, e82545_rx_callback, sc);
  free(devname);
  if (err)
   return (err);
 }

 if (!mac_provided) {
  net_genmac(pi, sc->esc_mac.octet);
 }

 netbe_rx_enable(sc->esc_be);


 e82545_reset(sc, 0);

 return (0);
}
