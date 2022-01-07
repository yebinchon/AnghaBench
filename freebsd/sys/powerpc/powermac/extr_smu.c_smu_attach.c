
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smu_softc {int sc_doorbellirqid; int sc_u3; int sc_cpu_diode_scale; int sc_cpu_diode_offset; int sc_cpu_volt_scale; int sc_cpu_volt_offset; int sc_cpu_curr_scale; int sc_cpu_curr_offset; int sc_slots_pow_scale; int sc_slots_pow_offset; int sc_doorbellirq; int sc_doorbellirqcookie; int sc_leddev; int sc_cmdq; int sc_cmd; int sc_cmd_dmamap; int sc_dmatag; int sc_mailbox; int * sc_bt; int * sc_cur_cmd; int sc_mtx; } ;
typedef scalar_t__ phandle_t ;
typedef int name ;
typedef int device_t ;
typedef int data ;


 int BUS_DMA_WAITOK ;
 int BUS_DMA_ZERO ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int ,int ) ;
 int INTR_MPSAFE ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int INTR_TYPE_MISC ;
 int MTX_DEF ;
 scalar_t__ OF_child (scalar_t__) ;
 int OF_finddevice (char*) ;
 int OF_getprop (scalar_t__,char*,char*,int) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OID_AUTO ;
 int PAGE_SIZE ;
 int RF_ACTIVE ;
 int SHUTDOWN_PRI_LAST ;
 int SMU_CPUTEMP_CAL ;
 int SMU_CPUVOLT_CAL ;
 int SMU_MAILBOX ;
 int SMU_SLOTPW_CAL ;
 int STAILQ_INIT (int *) ;
 int SYSCTL_ADD_PROC (int ,int ,int ,char*,int,int ,int ,int ,char*,char*) ;
 int SYSCTL_CHILDREN (int ) ;
 int SYS_RES_IRQ ;
 int bs_le_tag ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_dma_tag_create (int *,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,struct smu_softc*,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_generic_attach (int ) ;
 int bus_setup_intr (int ,int ,int,int *,int ,int ,int *) ;
 int bus_space_map (int *,int ,int,int ,int *) ;
 int clock_register (int ,int) ;
 int cpufreq_post_change ;
 int cpufreq_pre_change ;
 struct smu_softc* device_get_softc (int ) ;
 int device_get_sysctl_ctx (int ) ;
 int device_get_sysctl_tree (int ) ;
 int led_create (int ,int ,char*) ;
 int memset (char*,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ ofw_bus_get_node (int ) ;
 int powerpc_config_intr (int ,int ,int ) ;
 int rman_get_start (int ) ;
 int shutdown_final ;
 int smu_attach_fans (int ,scalar_t__) ;
 int smu_attach_i2c (int ,scalar_t__) ;
 int smu_attach_sensors (int ,scalar_t__) ;
 int smu_cpufreq_post_change ;
 int smu_cpufreq_pre_change ;
 int smu_doorbell ;
 int smu_doorbell_intr ;
 int smu_get_datablock (int ,int ,int*,int) ;
 int smu_phys_callback ;
 int smu_server_mode ;
 int smu_set_sleepled ;
 int smu_shutdown ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
smu_attach(device_t dev)
{
 struct smu_softc *sc;
 phandle_t node, child;
 uint8_t data[12];

 sc = device_get_softc(dev);

 mtx_init(&sc->sc_mtx, "smu", ((void*)0), MTX_DEF);
 sc->sc_cur_cmd = ((void*)0);
 sc->sc_doorbellirqid = -1;

 sc->sc_u3 = 0;
 if (OF_finddevice("/u3") != -1)
  sc->sc_u3 = 1;





 bus_dma_tag_create(((void*)0), 16, 0, BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR, ((void*)0), ((void*)0), PAGE_SIZE, 1, PAGE_SIZE, 0, ((void*)0),
     ((void*)0), &(sc->sc_dmatag));
 sc->sc_bt = &bs_le_tag;
 bus_space_map(sc->sc_bt, SMU_MAILBOX, 4, 0, &sc->sc_mailbox);





 bus_dmamem_alloc(sc->sc_dmatag, (void **)&sc->sc_cmd, BUS_DMA_WAITOK |
     BUS_DMA_ZERO, &sc->sc_cmd_dmamap);
 bus_dmamap_load(sc->sc_dmatag, sc->sc_cmd_dmamap,
     sc->sc_cmd, PAGE_SIZE, smu_phys_callback, sc, 0);
 STAILQ_INIT(&sc->sc_cmdq);




 EVENTHANDLER_REGISTER(cpufreq_pre_change, smu_cpufreq_pre_change, dev,
     EVENTHANDLER_PRI_ANY);
 EVENTHANDLER_REGISTER(cpufreq_post_change, smu_cpufreq_post_change, dev,
     EVENTHANDLER_PRI_ANY);

 node = ofw_bus_get_node(dev);




 smu_attach_fans(dev, node);




 for (child = OF_child(node); child != 0; child = OF_peer(child)) {
  char name[32];
  memset(name, 0, sizeof(name));
  OF_getprop(child, "name", name, sizeof(name));

  if (strncmp(name, "sensors", 8) == 0)
   smu_attach_sensors(dev, child);

  if (strncmp(name, "smu-i2c-control", 15) == 0)
   smu_attach_i2c(dev, child);
 }


 smu_attach_i2c(dev, node);




 smu_get_datablock(dev, SMU_CPUTEMP_CAL, data, sizeof(data));
 sc->sc_cpu_diode_scale = (data[4] << 8) + data[5];
 sc->sc_cpu_diode_offset = (data[6] << 8) + data[7];

 smu_get_datablock(dev, SMU_CPUVOLT_CAL, data, sizeof(data));
 sc->sc_cpu_volt_scale = (data[4] << 8) + data[5];
 sc->sc_cpu_volt_offset = (data[6] << 8) + data[7];
 sc->sc_cpu_curr_scale = (data[8] << 8) + data[9];
 sc->sc_cpu_curr_offset = (data[10] << 8) + data[11];

 smu_get_datablock(dev, SMU_SLOTPW_CAL, data, sizeof(data));
 sc->sc_slots_pow_scale = (data[4] << 8) + data[5];
 sc->sc_slots_pow_offset = (data[6] << 8) + data[7];




 sc->sc_leddev = led_create(smu_set_sleepled, dev, "sleepled");





 SYSCTL_ADD_PROC(device_get_sysctl_ctx(dev),
            SYSCTL_CHILDREN(device_get_sysctl_tree(dev)), OID_AUTO,
     "server_mode", CTLTYPE_INT | CTLFLAG_RW, dev, 0,
     smu_server_mode, "I", "Enable reboot after power failure");




 sc->sc_doorbellirqid = 0;
 sc->sc_doorbellirq = bus_alloc_resource_any(smu_doorbell, SYS_RES_IRQ,
     &sc->sc_doorbellirqid, RF_ACTIVE);
 bus_setup_intr(smu_doorbell, sc->sc_doorbellirq,
     INTR_TYPE_MISC | INTR_MPSAFE, ((void*)0), smu_doorbell_intr, dev,
     &sc->sc_doorbellirqcookie);
 powerpc_config_intr(rman_get_start(sc->sc_doorbellirq),
     INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);




 clock_register(dev, 1000);




 EVENTHANDLER_REGISTER(shutdown_final, smu_shutdown, dev,
     SHUTDOWN_PRI_LAST);

 return (bus_generic_attach(dev));
}
