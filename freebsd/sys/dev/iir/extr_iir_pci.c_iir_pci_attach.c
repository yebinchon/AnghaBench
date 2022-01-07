
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ u_int8_t ;
typedef int u_int32_t ;
struct resource {int dummy; } ;
struct gdt_softc {int sc_ic_all_size; int sc_lock; struct resource* sc_dpmem; scalar_t__ sc_init_level; int sc_parent_dmat; int sc_test_busy; int sc_set_sema0; int sc_release_event; int sc_intr; int sc_get_status; int sc_copy_cmd; int sc_class; int sc_subdevice; int sc_device; int sc_vendor; int sc_slot; int sc_bus; int sc_hanum; int sc_devnode; } ;
typedef int device_t ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int BUS_SPACE_UNRESTRICTED ;
 int DELAY (int) ;
 int ENOMEM ;
 int ENXIO ;
 scalar_t__ GDT_CMD_INDEX ;
 scalar_t__ GDT_EDOOR_EN ;
 int GDT_I960_SZ ;
 int GDT_MPR ;
 scalar_t__ GDT_MPR_EDOOR ;
 scalar_t__ GDT_MPR_IC ;
 scalar_t__ GDT_MPR_LDOOR ;
 int GDT_MPR_MAGIC ;
 int GDT_MPR_SZ ;
 scalar_t__ GDT_PROTOCOL_VERSION ;
 int GDT_RETRIES ;
 scalar_t__ GDT_S_CMD_INDX ;
 scalar_t__ GDT_S_INFO ;
 scalar_t__ GDT_S_STATUS ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int MTX_DEF ;
 int PCI_DPMEM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int bus_read_1 (struct resource*,scalar_t__) ;
 int bus_read_4 (struct resource*,scalar_t__) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int bus_set_region_4 (struct resource*,int ,int ,int) ;
 scalar_t__ bus_setup_intr (int ,struct resource*,int,int *,int ,struct gdt_softc*,void**) ;
 int bus_write_1 (struct resource*,scalar_t__,int) ;
 int bus_write_4 (struct resource*,scalar_t__,int ) ;
 int busdma_lock_mutex ;
 struct gdt_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int gdt_mpr_copy_cmd ;
 int gdt_mpr_get_status ;
 int gdt_mpr_intr ;
 int gdt_mpr_release_event ;
 int gdt_mpr_set_sema0 ;
 int gdt_mpr_test_busy ;
 int gdt_pci_enable_intr (struct gdt_softc*) ;
 int htole32 (int) ;
 int iir_attach (struct gdt_softc*) ;
 int iir_free (struct gdt_softc*) ;
 scalar_t__ iir_init (struct gdt_softc*) ;
 int iir_intr ;
 scalar_t__ le32toh (int ) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pci_get_bus (int ) ;
 int pci_get_device (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_vendor (int ) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
iir_pci_attach(device_t dev)
{
    struct gdt_softc *gdt;
    struct resource *irq = ((void*)0);
    int retries, rid, error = 0;
    void *ih;
    u_int8_t protocol;

    gdt = device_get_softc(dev);
    mtx_init(&gdt->sc_lock, "iir", ((void*)0), MTX_DEF);


    rid = PCI_DPMEM;
    gdt->sc_dpmem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
    if (gdt->sc_dpmem == ((void*)0)) {
        device_printf(dev, "can't allocate register resources\n");
        error = ENOMEM;
        goto err;
    }


    rid = 0;
    irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &rid,
                                 RF_ACTIVE | RF_SHAREABLE);
    if (irq == ((void*)0)) {
        device_printf(dev, "can't find IRQ value\n");
        error = ENOMEM;
        goto err;
    }

    gdt->sc_devnode = dev;
    gdt->sc_init_level = 0;
    gdt->sc_hanum = device_get_unit(dev);
    gdt->sc_bus = pci_get_bus(dev);
    gdt->sc_slot = pci_get_slot(dev);
    gdt->sc_vendor = pci_get_vendor(dev);
    gdt->sc_device = pci_get_device(dev);
    gdt->sc_subdevice = pci_get_subdevice(dev);
    gdt->sc_class = GDT_MPR;







    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC, htole32(GDT_MPR_MAGIC));
    if (bus_read_4(gdt->sc_dpmem, GDT_MPR_IC) != htole32(GDT_MPR_MAGIC)) {
 device_printf(dev, "cannot access DPMEM at 0x%jx (shadowed?)\n",
     rman_get_start(gdt->sc_dpmem));
        error = ENXIO;
        goto err;
    }
    bus_set_region_4(gdt->sc_dpmem, GDT_I960_SZ, htole32(0), GDT_MPR_SZ >> 2);


    bus_write_1(gdt->sc_dpmem, GDT_EDOOR_EN,
 bus_read_1(gdt->sc_dpmem, GDT_EDOOR_EN) | 4);
    bus_write_1(gdt->sc_dpmem, GDT_MPR_EDOOR, 0xff);
    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);
    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_CMD_INDEX, 0);

    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO,
 htole32(rman_get_start(gdt->sc_dpmem)));
    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_CMD_INDX, 0xff);
    bus_write_1(gdt->sc_dpmem, GDT_MPR_LDOOR, 1);

    DELAY(20);
    retries = GDT_RETRIES;
    while (bus_read_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS) != 0xff) {
        if (--retries == 0) {
            device_printf(dev, "DEINIT failed\n");
            error = ENXIO;
            goto err;
        }
        DELAY(1);
    }

    protocol = (uint8_t)le32toh(bus_read_4(gdt->sc_dpmem,
     GDT_MPR_IC + GDT_S_INFO));
    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);
    if (protocol != GDT_PROTOCOL_VERSION) {
        device_printf(dev, "unsupported protocol %d\n", protocol);
        error = ENXIO;
        goto err;
    }


    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO, htole32(0));
    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + sizeof (u_int32_t),
 htole32(0));
    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + 2 * sizeof (u_int32_t),
 htole32(1));
    bus_write_4(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_INFO + 3 * sizeof (u_int32_t),
 htole32(0));
    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_CMD_INDX, 0xfe);
    bus_write_1(gdt->sc_dpmem, GDT_MPR_LDOOR, 1);

    DELAY(20);
    retries = GDT_RETRIES;
    while (bus_read_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS) != 0xfe) {
        if (--retries == 0) {
            device_printf(dev, "initialization error\n");
            error = ENXIO;
            goto err;
        }
        DELAY(1);
    }

    bus_write_1(gdt->sc_dpmem, GDT_MPR_IC + GDT_S_STATUS, 0);

    gdt->sc_ic_all_size = GDT_MPR_SZ;

    gdt->sc_copy_cmd = gdt_mpr_copy_cmd;
    gdt->sc_get_status = gdt_mpr_get_status;
    gdt->sc_intr = gdt_mpr_intr;
    gdt->sc_release_event = gdt_mpr_release_event;
    gdt->sc_set_sema0 = gdt_mpr_set_sema0;
    gdt->sc_test_busy = gdt_mpr_test_busy;


    if (bus_dma_tag_create( bus_get_dma_tag(dev),
                                        1, 0,
                                      BUS_SPACE_MAXADDR_32BIT,
                                       BUS_SPACE_MAXADDR,
                                     ((void*)0), ((void*)0),
                                      BUS_SPACE_MAXSIZE_32BIT,
                   BUS_SPACE_UNRESTRICTED,
                                       BUS_SPACE_MAXSIZE_32BIT,
               0, busdma_lock_mutex,
                 &gdt->sc_lock, &gdt->sc_parent_dmat) != 0) {
        error = ENXIO;
        goto err;
    }
    gdt->sc_init_level++;

    if (iir_init(gdt) != 0) {
        iir_free(gdt);
        error = ENXIO;
        goto err;
    }


    iir_attach(gdt);


    if (bus_setup_intr(dev, irq, INTR_TYPE_CAM | INTR_MPSAFE,
                        ((void*)0), iir_intr, gdt, &ih )) {
        device_printf(dev, "Unable to register interrupt handler\n");
        error = ENXIO;
        goto err;
    }

    gdt_pci_enable_intr(gdt);
    return (0);

err:
    if (irq)
        bus_release_resource( dev, SYS_RES_IRQ, 0, irq );

    if (gdt->sc_dpmem)
        bus_release_resource( dev, SYS_RES_MEMORY, rid, gdt->sc_dpmem );
    mtx_destroy(&gdt->sc_lock);

    return (error);
}
