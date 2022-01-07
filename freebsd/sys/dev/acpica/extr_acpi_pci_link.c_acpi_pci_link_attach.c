
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct link_res_request {scalar_t__ count; struct acpi_pci_link_softc* sc; scalar_t__ res_index; scalar_t__ link_index; void* in_dpf; } ;
struct link_count_request {scalar_t__ count; struct acpi_pci_link_softc* sc; scalar_t__ res_index; scalar_t__ link_index; void* in_dpf; } ;
struct link {int dummy; } ;
struct acpi_pci_link_softc {scalar_t__ pl_num_links; TYPE_1__* pl_links; scalar_t__ pl_crs_bad; int pl_dev; } ;
typedef int device_t ;
struct TYPE_4__ {int l_res_index; struct TYPE_4__* l_irqs; int l_routed; void* l_irq; void* l_initial_irq; int l_isa_irq; struct acpi_pci_link_softc* l_sc; void* l_bios_irq; } ;
typedef scalar_t__ ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ AE_NOT_FOUND ;
 int AcpiEvaluateObject (int ,char*,int *,int *) ;
 int AcpiFormatException (scalar_t__) ;
 scalar_t__ AcpiWalkResources (int ,char*,int ,struct link_res_request*) ;
 void* DPF_OUTSIDE ;
 int ENXIO ;
 int FALSE ;
 int M_PCI_LINK ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ PCI_INTERRUPT_VALID (void*) ;
 void* PCI_INVALID_IRQ ;
 int TRUE ;
 int acpi_count_irq_resources ;
 int acpi_get_handle (int ) ;
 int acpi_pci_link_dump (struct acpi_pci_link_softc*,int,char*) ;
 scalar_t__ bootverbose ;
 struct acpi_pci_link_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int ) ;
 int free (TYPE_1__*,int ) ;
 int link_add_crs ;
 int link_add_prs ;
 int link_valid_irq (TYPE_1__*,void*) ;
 TYPE_1__* malloc (int,int ,int) ;
 int pci_link ;

__attribute__((used)) static int
acpi_pci_link_attach(device_t dev)
{
 struct acpi_pci_link_softc *sc;
 struct link_count_request creq;
 struct link_res_request rreq;
 ACPI_STATUS status;
 int i;

 sc = device_get_softc(dev);
 sc->pl_dev = dev;
 ACPI_SERIAL_BEGIN(pci_link);






 creq.in_dpf = DPF_OUTSIDE;
 creq.count = 0;
 status = AcpiWalkResources(acpi_get_handle(dev), "_CRS",
     acpi_count_irq_resources, &creq);
 sc->pl_crs_bad = ACPI_FAILURE(status);
 if (sc->pl_crs_bad) {
  creq.in_dpf = DPF_OUTSIDE;
  creq.count = 0;
  status = AcpiWalkResources(acpi_get_handle(dev), "_PRS",
      acpi_count_irq_resources, &creq);
  if (ACPI_FAILURE(status)) {
   device_printf(dev,
       "Unable to parse _CRS or _PRS: %s\n",
       AcpiFormatException(status));
   ACPI_SERIAL_END(pci_link);
   return (ENXIO);
  }
 }
 sc->pl_num_links = creq.count;
 if (creq.count == 0) {
  ACPI_SERIAL_END(pci_link);
  return (0);
 }
 sc->pl_links = malloc(sizeof(struct link) * sc->pl_num_links,
     M_PCI_LINK, M_WAITOK | M_ZERO);


 for (i = 0; i < sc->pl_num_links; i++) {
  sc->pl_links[i].l_irq = PCI_INVALID_IRQ;
  sc->pl_links[i].l_bios_irq = PCI_INVALID_IRQ;
  sc->pl_links[i].l_sc = sc;
  sc->pl_links[i].l_isa_irq = FALSE;
  sc->pl_links[i].l_res_index = -1;
 }


 if (!sc->pl_crs_bad) {
  rreq.in_dpf = DPF_OUTSIDE;
  rreq.link_index = 0;
  rreq.res_index = 0;
  rreq.sc = sc;
  status = AcpiWalkResources(acpi_get_handle(dev), "_CRS",
      link_add_crs, &rreq);
  if (ACPI_FAILURE(status)) {
   device_printf(dev, "Unable to parse _CRS: %s\n",
       AcpiFormatException(status));
   goto fail;
  }
 }






 rreq.in_dpf = DPF_OUTSIDE;
 rreq.link_index = 0;
 rreq.res_index = 0;
 rreq.sc = sc;
 status = AcpiWalkResources(acpi_get_handle(dev), "_PRS",
     link_add_prs, &rreq);
 if (ACPI_FAILURE(status) &&
     (status != AE_NOT_FOUND || sc->pl_crs_bad)) {
  device_printf(dev, "Unable to parse _PRS: %s\n",
      AcpiFormatException(status));
  goto fail;
 }
 if (bootverbose)
  acpi_pci_link_dump(sc, 1, "Initial Probe");


 if (status != AE_NOT_FOUND)
  for (i = 0; i < sc->pl_num_links; i++)
   if (!link_valid_irq(&sc->pl_links[i],
       sc->pl_links[i].l_irq))
    sc->pl_links[i].l_irq = PCI_INVALID_IRQ;
 if (bootverbose)
  acpi_pci_link_dump(sc, 0, "Validation");


 for (i = 0; i < sc->pl_num_links; i++)
  sc->pl_links[i].l_initial_irq = sc->pl_links[i].l_irq;







 if (ACPI_SUCCESS(AcpiEvaluateObject(acpi_get_handle(dev), "_DIS", ((void*)0),
     ((void*)0))))
  for (i = 0; i < sc->pl_num_links; i++)
   sc->pl_links[i].l_irq = PCI_INVALID_IRQ;
 else
  for (i = 0; i < sc->pl_num_links; i++)
   if (PCI_INTERRUPT_VALID(sc->pl_links[i].l_irq))
    sc->pl_links[i].l_routed = TRUE;
 if (bootverbose)
  acpi_pci_link_dump(sc, 0, "After Disable");
 ACPI_SERIAL_END(pci_link);
 return (0);
fail:
 ACPI_SERIAL_END(pci_link);
 for (i = 0; i < sc->pl_num_links; i++)
  if (sc->pl_links[i].l_irqs != ((void*)0))
   free(sc->pl_links[i].l_irqs, M_PCI_LINK);
 free(sc->pl_links, M_PCI_LINK);
 return (ENXIO);
}
