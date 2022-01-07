
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ichwd_device {int tco_version; } ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ driver_t ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,int ,int ) ;
 int ICH_GCS_OFFSET ;
 int ICH_GCS_SIZE ;
 int ICH_PBASE ;
 int ICH_PMC_OFFSET ;
 int ICH_PMC_SIZE ;
 int ICH_RCBA ;
 int ICH_TCOBASE ;
 int ICH_TCOBASE_ADDRMASK ;
 int ICH_TCOBASE_SIZE ;
 int ICH_TCOCTL ;
 int ICH_TCOCTL_TCO_BASE_EN ;
 int KASSERT (int,char*) ;
 int PCR_REG_OFF (int ,int ) ;
 int SBREG_BAR ;
 int SMB_GC_REG ;
 int SMB_GC_SIZE ;
 int SMB_PORT_ID ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_set_resource (int *,int ,int,int,int ) ;
 int * device_find_child (int *,int ,int ) ;
 int * ichwd_find_ich_lpc_bridge (int *,struct ichwd_device**) ;
 int * ichwd_find_smb_dev (int *,struct ichwd_device**) ;
 int ichwd_verbose_printf (int *,char*,int,...) ;
 int pci_cfgregread (int ,int,int,int ,int) ;
 int pci_cfgregwrite (int ,int,int,int,int,int) ;
 int pci_read_config (int *,int ,int) ;

__attribute__((used)) static void
ichwd_identify(driver_t *driver, device_t parent)
{
 struct ichwd_device *id_p;
 device_t ich, smb;
 device_t dev;
 uint64_t base_address64;
 uint32_t base_address;
 uint32_t ctl;
 int rc;

 ich = ichwd_find_ich_lpc_bridge(parent, &id_p);
 if (ich == ((void*)0)) {
  smb = ichwd_find_smb_dev(parent, &id_p);
  if (smb == ((void*)0))
   return;
 }

 KASSERT(id_p->tco_version >= 1,
     ("unexpected TCO version %d", id_p->tco_version));
 KASSERT(id_p->tco_version != 4 || smb != ((void*)0),
     ("could not find PCI SMBus device for TCOv4"));
 KASSERT(id_p->tco_version >= 4 || ich != ((void*)0),
     ("could not find PCI LPC bridge device for TCOv1-3"));


 if ((dev = device_find_child(parent, driver->name, 0)) == ((void*)0))
  dev = BUS_ADD_CHILD(parent, 0, driver->name, 0);

 if (dev == ((void*)0))
  return;

 switch (id_p->tco_version) {
 case 1:
  break;
 case 2:

  base_address = pci_read_config(ich, ICH_RCBA, 4);
  rc = bus_set_resource(ich, SYS_RES_MEMORY, 0,
      (base_address & 0xffffc000) + ICH_GCS_OFFSET,
      ICH_GCS_SIZE);
  if (rc)
   ichwd_verbose_printf(dev,
       "Can not set TCO v%d memory resource for RCBA\n",
       id_p->tco_version);
  break;
 case 3:

  base_address = pci_read_config(ich, ICH_PBASE, 4);
  rc = bus_set_resource(ich, SYS_RES_MEMORY, 0,
      (base_address & 0xfffffe00) + ICH_PMC_OFFSET,
      ICH_PMC_SIZE);
  if (rc)
   ichwd_verbose_printf(dev,
       "Can not set TCO v%d memory resource for PBASE\n",
       id_p->tco_version);
  break;
 case 4:

  ctl = pci_read_config(smb, ICH_TCOCTL, 4);
  if ((ctl & ICH_TCOCTL_TCO_BASE_EN) == 0) {
   ichwd_verbose_printf(dev,
       "TCO v%d decoding is not enabled\n",
       id_p->tco_version);
   break;
  }
  base_address = pci_read_config(smb, ICH_TCOBASE, 4);
  rc = bus_set_resource(dev, SYS_RES_IOPORT, 0,
      base_address & ICH_TCOBASE_ADDRMASK, ICH_TCOBASE_SIZE);
  if (rc != 0) {
   ichwd_verbose_printf(dev,
       "Can not set TCO v%d I/O resource (err = %d)\n",
       id_p->tco_version, rc);
  }







  pci_cfgregwrite(0, 31, 1, 0xe1, 0, 1);
  base_address64 = pci_cfgregread(0, 31, 1, SBREG_BAR + 4, 4);
  base_address64 <<= 32;
  base_address64 |= pci_cfgregread(0, 31, 1, SBREG_BAR, 4);
  base_address64 &= ~0xfull;
  pci_cfgregwrite(0, 31, 1, 0xe1, 1, 1);





  base_address64 += PCR_REG_OFF(SMB_PORT_ID, SMB_GC_REG);
  rc = bus_set_resource(dev, SYS_RES_MEMORY, 1, base_address64,
      SMB_GC_SIZE);
  if (rc != 0) {
   ichwd_verbose_printf(dev,
       "Can not set TCO v%d PCR I/O resource (err = %d)\n",
       id_p->tco_version, rc);
  }

  break;
 default:
  ichwd_verbose_printf(dev,
      "Can not set unknown TCO v%d memory resource for unknown base address\n",
      id_p->tco_version);
  break;
 }
}
