
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct xlp_rsa_softc {scalar_t__ sc_cid; int rsaecc_vc_start; int rsaecc_vc_end; int sc_dev; } ;
struct xlp_rsa_session {int dummy; } ;
typedef int device_t ;


 int CRK_MOD_EXP ;
 int CRYPTOCAP_F_HARDWARE ;
 int DFS_DEVICE_RSA ;
 int ENXIO ;
 scalar_t__ PCI_DEVICE_ID_NLM_RSA ;
 scalar_t__ bootverbose ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 scalar_t__ crypto_kregister (scalar_t__,int ,int ) ;
 struct xlp_rsa_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_desc (int ,char*) ;
 int nlm_get_device_node (int ) ;
 int nlm_get_rsa_pcibase (int) ;
 int nlm_qidstart (int ) ;
 int nlm_qnum (int ) ;
 int nlm_set_device_frequency (int,int ,int) ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_slot (int ) ;
 int printf (char*) ;
 scalar_t__ xlp_rsa_init (struct xlp_rsa_softc*,int) ;

__attribute__((used)) static int
xlp_rsa_attach(device_t dev)
{
 struct xlp_rsa_softc *sc = device_get_softc(dev);
 uint64_t base;
 int qstart, qnum;
 int freq, node;

 sc->sc_dev = dev;

 node = nlm_get_device_node(pci_get_slot(dev));
 freq = nlm_set_device_frequency(node, DFS_DEVICE_RSA, 250);
 if (bootverbose)
  device_printf(dev, "RSA Freq: %dMHz\n", freq);
 if (pci_get_device(dev) == PCI_DEVICE_ID_NLM_RSA) {
  device_set_desc(dev, "XLP RSA/ECC Accelerator");
  sc->sc_cid = crypto_get_driverid(dev,
      sizeof(struct xlp_rsa_session), CRYPTOCAP_F_HARDWARE);
  if (sc->sc_cid < 0) {
   printf("xlp_rsaecc-err:couldn't get the driver id\n");
   goto error_exit;
  }
  if (crypto_kregister(sc->sc_cid, CRK_MOD_EXP, 0) != 0)
   goto error_exit;

  base = nlm_get_rsa_pcibase(node);
  qstart = nlm_qidstart(base);
  qnum = nlm_qnum(base);
  sc->rsaecc_vc_start = qstart;
  sc->rsaecc_vc_end = qstart + qnum - 1;
 }
 if (xlp_rsa_init(sc, node) != 0)
  goto error_exit;
 device_printf(dev, "RSA Initialization complete!\n");
 return (0);

error_exit:
 return (ENXIO);
}
