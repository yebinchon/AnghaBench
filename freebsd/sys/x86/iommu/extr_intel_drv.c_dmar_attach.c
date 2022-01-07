
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct dmar_unit {int hw_cap; int hw_ecap; int ctx_obj; int domids; int domains; int lock; TYPE_1__* intrs; int hw_ver; int * regs; int reg_rid; int base; int segment; int unit; int dev; } ;
typedef int device_t ;
struct TYPE_6__ {int Address; int Segment; } ;
struct TYPE_5__ {int irq; char* name; int disable_intr; int enable_intr; int msi_uaddr_reg; int msi_addr_reg; int msi_data_reg; int handler; int irq_rid; } ;
typedef TYPE_2__ ACPI_DMAR_HARDWARE_UNIT ;


 int DMAR_CAP_CM ;
 int DMAR_CAP_ND (int) ;
 int DMAR_CAP_REG ;
 scalar_t__ DMAR_CTX_CNT ;
 int DMAR_ECAP_DI ;
 int DMAR_ECAP_REG ;
 int DMAR_FAULT_IRQ_RID ;
 int DMAR_FEADDR_REG ;
 int DMAR_FEDATA_REG ;
 int DMAR_FEUADDR_REG ;
 scalar_t__ DMAR_HAS_QI (struct dmar_unit*) ;
 int DMAR_IEADDR_REG ;
 int DMAR_IEDATA_REG ;
 int DMAR_IEUADDR_REG ;
 size_t DMAR_INTR_FAULT ;
 size_t DMAR_INTR_QI ;
 int DMAR_INTR_TOTAL ;
 int DMAR_LOCK (struct dmar_unit*) ;
 int DMAR_PGF_WAITOK ;
 int DMAR_PGF_ZERO ;
 int DMAR_QI_IRQ_RID ;
 int DMAR_REG_RID ;
 int DMAR_UNLOCK (struct dmar_unit*) ;
 int DMAR_VER_REG ;
 int EINVAL ;
 int ENOMEM ;
 int IDX_TO_OFF (scalar_t__) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int OBJT_PHYS ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int TUNABLE_UINT64_FETCH (char*,int *) ;
 int alloc_unr_specific (int ,int ) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 struct dmar_unit* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int dmar_alloc_irq (int ,struct dmar_unit*,size_t) ;
 int dmar_disable_fault_intr ;
 int dmar_disable_qi_intr ;
 int dmar_enable_fault_intr ;
 int dmar_enable_qi_intr ;
 int dmar_enable_translation (struct dmar_unit*) ;
 int dmar_fault_intr ;
 TYPE_2__* dmar_find_by_index (int ) ;
 int dmar_get_timeout () ;
 int dmar_init_busdma (struct dmar_unit*) ;
 int dmar_init_fault_log (struct dmar_unit*) ;
 int dmar_init_irt (struct dmar_unit*) ;
 int dmar_init_qi (struct dmar_unit*) ;
 int dmar_inv_ctx_glob (struct dmar_unit*) ;
 int dmar_inv_iotlb_glob (struct dmar_unit*) ;
 int dmar_load_root_entry_ptr (struct dmar_unit*) ;
 int dmar_nd2mask (int ) ;
 int dmar_pgalloc (int ,int ,int) ;
 int dmar_print_caps (int ,struct dmar_unit*,TYPE_2__*) ;
 int dmar_qi_intr ;
 int dmar_quirks_post_ident (struct dmar_unit*) ;
 int dmar_read4 (struct dmar_unit*,int ) ;
 void* dmar_read8 (struct dmar_unit*,int ) ;
 int dmar_release_resources (int ,struct dmar_unit*) ;
 int dmar_update_timeout (int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int ,int ,int *) ;
 int vm_pager_allocate (int ,int *,int ,int ,int ,int *) ;

__attribute__((used)) static int
dmar_attach(device_t dev)
{
 struct dmar_unit *unit;
 ACPI_DMAR_HARDWARE_UNIT *dmaru;
 uint64_t timeout;
 int i, error;

 unit = device_get_softc(dev);
 unit->dev = dev;
 unit->unit = device_get_unit(dev);
 dmaru = dmar_find_by_index(unit->unit);
 if (dmaru == ((void*)0))
  return (EINVAL);
 unit->segment = dmaru->Segment;
 unit->base = dmaru->Address;
 unit->reg_rid = DMAR_REG_RID;
 unit->regs = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &unit->reg_rid, RF_ACTIVE);
 if (unit->regs == ((void*)0)) {
  device_printf(dev, "cannot allocate register window\n");
  return (ENOMEM);
 }
 unit->hw_ver = dmar_read4(unit, DMAR_VER_REG);
 unit->hw_cap = dmar_read8(unit, DMAR_CAP_REG);
 unit->hw_ecap = dmar_read8(unit, DMAR_ECAP_REG);
 if (bootverbose)
  dmar_print_caps(dev, unit, dmaru);
 dmar_quirks_post_ident(unit);

 timeout = dmar_get_timeout();
 TUNABLE_UINT64_FETCH("hw.dmar.timeout", &timeout);
 dmar_update_timeout(timeout);

 for (i = 0; i < DMAR_INTR_TOTAL; i++)
  unit->intrs[i].irq = -1;

 unit->intrs[DMAR_INTR_FAULT].name = "fault";
 unit->intrs[DMAR_INTR_FAULT].irq_rid = DMAR_FAULT_IRQ_RID;
 unit->intrs[DMAR_INTR_FAULT].handler = dmar_fault_intr;
 unit->intrs[DMAR_INTR_FAULT].msi_data_reg = DMAR_FEDATA_REG;
 unit->intrs[DMAR_INTR_FAULT].msi_addr_reg = DMAR_FEADDR_REG;
 unit->intrs[DMAR_INTR_FAULT].msi_uaddr_reg = DMAR_FEUADDR_REG;
 unit->intrs[DMAR_INTR_FAULT].enable_intr = dmar_enable_fault_intr;
 unit->intrs[DMAR_INTR_FAULT].disable_intr = dmar_disable_fault_intr;
 error = dmar_alloc_irq(dev, unit, DMAR_INTR_FAULT);
 if (error != 0) {
  dmar_release_resources(dev, unit);
  return (error);
 }
 if (DMAR_HAS_QI(unit)) {
  unit->intrs[DMAR_INTR_QI].name = "qi";
  unit->intrs[DMAR_INTR_QI].irq_rid = DMAR_QI_IRQ_RID;
  unit->intrs[DMAR_INTR_QI].handler = dmar_qi_intr;
  unit->intrs[DMAR_INTR_QI].msi_data_reg = DMAR_IEDATA_REG;
  unit->intrs[DMAR_INTR_QI].msi_addr_reg = DMAR_IEADDR_REG;
  unit->intrs[DMAR_INTR_QI].msi_uaddr_reg = DMAR_IEUADDR_REG;
  unit->intrs[DMAR_INTR_QI].enable_intr = dmar_enable_qi_intr;
  unit->intrs[DMAR_INTR_QI].disable_intr = dmar_disable_qi_intr;
  error = dmar_alloc_irq(dev, unit, DMAR_INTR_QI);
  if (error != 0) {
   dmar_release_resources(dev, unit);
   return (error);
  }
 }

 mtx_init(&unit->lock, "dmarhw", ((void*)0), MTX_DEF);
 unit->domids = new_unrhdr(0, dmar_nd2mask(DMAR_CAP_ND(unit->hw_cap)),
     &unit->lock);
 LIST_INIT(&unit->domains);
 if ((unit->hw_cap & DMAR_CAP_CM) != 0)
  alloc_unr_specific(unit->domids, 0);

 unit->ctx_obj = vm_pager_allocate(OBJT_PHYS, ((void*)0), IDX_TO_OFF(1 +
     DMAR_CTX_CNT), 0, 0, ((void*)0));






 dmar_pgalloc(unit->ctx_obj, 0, DMAR_PGF_WAITOK | DMAR_PGF_ZERO);
 DMAR_LOCK(unit);
 error = dmar_load_root_entry_ptr(unit);
 if (error != 0) {
  DMAR_UNLOCK(unit);
  dmar_release_resources(dev, unit);
  return (error);
 }
 error = dmar_inv_ctx_glob(unit);
 if (error != 0) {
  DMAR_UNLOCK(unit);
  dmar_release_resources(dev, unit);
  return (error);
 }
 if ((unit->hw_ecap & DMAR_ECAP_DI) != 0) {
  error = dmar_inv_iotlb_glob(unit);
  if (error != 0) {
   DMAR_UNLOCK(unit);
   dmar_release_resources(dev, unit);
   return (error);
  }
 }

 DMAR_UNLOCK(unit);
 error = dmar_init_fault_log(unit);
 if (error != 0) {
  dmar_release_resources(dev, unit);
  return (error);
 }
 error = dmar_init_qi(unit);
 if (error != 0) {
  dmar_release_resources(dev, unit);
  return (error);
 }
 error = dmar_init_irt(unit);
 if (error != 0) {
  dmar_release_resources(dev, unit);
  return (error);
 }
 error = dmar_init_busdma(unit);
 if (error != 0) {
  dmar_release_resources(dev, unit);
  return (error);
 }
 return (0);
}
