
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct gdt_softc {int* sc_gcscratch; int sc_info; int sc_bus_cnt; int* sc_bus_id; int sc_virt_bus; int sc_raw_feat; int sc_cache_feat; char* oem_name; scalar_t__ sc_vendor; int sc_info2; int sc_lock; int sc_dpmembase; TYPE_2__* sc_hdr; int sc_devnode; int sc_status; int sc_service; int sc_fw_vers; int sc_dev; int sc_init_level; int sc_free_gccb; scalar_t__ sc_gcscratch_busbase; int sc_buffer_dmat; struct gdt_ccb* sc_gccbs; int sc_gcscratch_dmamap; int sc_gcscratch_dmat; int sc_parent_dmat; int sc_ucmd_queue; int sc_ccb_queue; int sc_pending_gccb; int sc_state; } ;
struct gdt_ccb {int gc_cmd_index; int* gc_scratch; int* gc_cmd; int gc_timeout; scalar_t__ gc_scratch_busbase; int gc_map_flag; int gc_dmamap; int gc_flags; } ;
typedef int gdt_statist_t ;
struct TYPE_4__ {int scsi_host_drive_inquiry_vendor_id; } ;
struct TYPE_6__ {TYPE_1__ text; } ;
typedef TYPE_3__ gdt_oem_str_record_t ;
typedef int gdt_oem_record_t ;
struct TYPE_5__ {int hd_present; int hd_size; int hd_heads; int hd_secs; int hd_devtype; } ;


 int BUS_DMA_ALLOCNOW ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int DFLTPHYS ;
 int FALSE ;
 int GDT_CACHESERVICE ;
 int GDT_CMD_SZ ;
 int GDT_DEVTYPE ;
 int GDT_DPRINTF (int ,char*) ;
 int GDT_D_DEBUG ;
 int GDT_D_INIT ;
 int GDT_GCF_UNUSED ;
 int GDT_GETCH_CHANNEL_NO ;
 size_t GDT_GETCH_SIOP_ID ;
 int GDT_GETCH_SZ ;
 int GDT_GET_FEAT ;
 int GDT_INFO ;
 int GDT_INIT ;
 int GDT_INVALID_CHANNEL ;
 int GDT_IOCHAN_RAW_DESC ;
 int GDT_IOCTL ;
 size_t GDT_IOC_CHAN_COUNT ;
 size_t GDT_IOC_FIRST_CHAN ;
 int GDT_IOC_HDR_SZ ;
 size_t GDT_IOC_LAST_CHAN ;
 size_t GDT_IOC_LIST_ENTRIES ;
 int GDT_IOC_LIST_OFFSET ;
 int GDT_IOC_NEWEST ;
 int GDT_IOC_VERSION ;
 int GDT_IO_CHANNEL ;
 int GDT_LINUX_OS ;
 int GDT_L_CTRL_PATTERN ;
 int GDT_MAXBUS ;
 int GDT_MAXCMDS ;
 int GDT_MAXID_FC ;
 int GDT_MAXSG ;
 int GDT_MAX_HDRIVES ;
 int GDT_OEM_BUFSIZE ;
 int GDT_OEM_STR_RECORD ;
 int GDT_OEM_VERSION ;
 int GDT_POLLING ;
 int GDT_RAWIOC_PROC_ID ;
 int GDT_RAWIOC_SZ ;
 int GDT_SCATTER_GATHER ;
 int GDT_SCRATCH_SZ ;
 int GDT_SCREENSERVICE ;
 int GDT_SCSIRAWSERVICE ;
 int GDT_SCSI_CHAN_CNT ;
 int GDT_SECS32 ;
 int GDT_SET_FEAT ;
 int GDT_UNFREEZE_IO ;
 scalar_t__ INTEL_VENDOR_ID_IIR ;
 int M_GDTBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int SLIST_INIT (int *) ;
 int SLIST_INSERT_HEAD (int *,struct gdt_ccb*,int ) ;
 int TAILQ_INIT (int *) ;
 int TRUE ;
 int atomic_add_int (int *,int) ;
 scalar_t__ bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int,int,int ,int ,int ,int *,int *) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bus_dmamap_load (int ,int ,int*,int,int ,scalar_t__*,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int ,int *) ;
 int busdma_lock_mutex ;
 int bzero (int*,int) ;
 int callout_init_mtx (int *,int *,int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int gdt_clear_events () ;
 int gdt_cnt ;
 int gdt_enc32 (int*,int) ;
 int gdt_eval_mapping (int,int*,int*,int*) ;
 int gdt_free_ccb (struct gdt_softc*,struct gdt_ccb*) ;
 struct gdt_ccb* gdt_get_ccb (struct gdt_softc*) ;
 scalar_t__ gdt_internal_cmd (struct gdt_softc*,struct gdt_ccb*,int ,int ,int,int,int) ;
 int gdt_make_dev (struct gdt_softc*) ;
 int gdt_stat ;
 int gdtmapmem ;
 struct gdt_ccb* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int panic (char*,int ) ;
 int sle ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int ,int) ;

int
iir_init(struct gdt_softc *gdt)
{
    u_int16_t cdev_cnt;
    int i, id, drv_cyls, drv_hds, drv_secs;
    struct gdt_ccb *gccb;

    GDT_DPRINTF(GDT_D_DEBUG, ("iir_init()\n"));

    gdt->sc_state = GDT_POLLING;
    gdt_clear_events();
    bzero(&gdt_stat, sizeof(gdt_statist_t));

    SLIST_INIT(&gdt->sc_free_gccb);
    SLIST_INIT(&gdt->sc_pending_gccb);
    TAILQ_INIT(&gdt->sc_ccb_queue);
    TAILQ_INIT(&gdt->sc_ucmd_queue);


    if (bus_dma_tag_create(gdt->sc_parent_dmat, 1, 0,
                                      BUS_SPACE_MAXADDR_32BIT,
                                       BUS_SPACE_MAXADDR,
                                     ((void*)0), ((void*)0),
                 DFLTPHYS,
                   GDT_MAXSG,
                                       BUS_SPACE_MAXSIZE_32BIT,
                                    BUS_DMA_ALLOCNOW,
                  busdma_lock_mutex,
                 &gdt->sc_lock,
                           &gdt->sc_buffer_dmat) != 0) {
 device_printf(gdt->sc_devnode,
     "bus_dma_tag_create(..., gdt->sc_buffer_dmat) failed\n");
        return (1);
    }
    gdt->sc_init_level++;


    if (bus_dma_tag_create(gdt->sc_parent_dmat,
                   1,
                  0,
                                      BUS_SPACE_MAXADDR_32BIT,
                                       BUS_SPACE_MAXADDR,
                                     ((void*)0),
                   ((void*)0),
                           GDT_MAXCMDS * GDT_SCRATCH_SZ,
                                        1,
                                       BUS_SPACE_MAXSIZE_32BIT,
               0, busdma_lock_mutex,
                 &gdt->sc_lock,
      &gdt->sc_gcscratch_dmat) != 0) {
        device_printf(gdt->sc_devnode,
     "bus_dma_tag_create(...,gdt->sc_gcscratch_dmat) failed\n");
        return (1);
    }
    gdt->sc_init_level++;


    if (bus_dmamem_alloc(gdt->sc_gcscratch_dmat, (void **)&gdt->sc_gcscratch,
                         BUS_DMA_NOWAIT, &gdt->sc_gcscratch_dmamap) != 0) {
        device_printf(gdt->sc_devnode,
     "bus_dmamem_alloc(...,&gdt->sc_gccbs,...) failed\n");
        return (1);
    }
    gdt->sc_init_level++;


    bus_dmamap_load(gdt->sc_gcscratch_dmat, gdt->sc_gcscratch_dmamap,
                    gdt->sc_gcscratch, GDT_MAXCMDS * GDT_SCRATCH_SZ,
                    gdtmapmem, &gdt->sc_gcscratch_busbase, 0);
    gdt->sc_init_level++;


    bzero(gdt->sc_gcscratch, GDT_MAXCMDS * GDT_SCRATCH_SZ);


    gdt->sc_gccbs = malloc(sizeof(struct gdt_ccb) * GDT_MAXCMDS, M_GDTBUF,
        M_NOWAIT | M_ZERO);
    if (gdt->sc_gccbs == ((void*)0)) {
        device_printf(gdt->sc_devnode, "no memory for gccbs.\n");
        return (1);
    }
    for (i = GDT_MAXCMDS-1; i >= 0; i--) {
        gccb = &gdt->sc_gccbs[i];
        gccb->gc_cmd_index = i + 2;
        gccb->gc_flags = GDT_GCF_UNUSED;
        gccb->gc_map_flag = FALSE;
        if (bus_dmamap_create(gdt->sc_buffer_dmat, 0,
                              &gccb->gc_dmamap) != 0)
            return(1);
        gccb->gc_map_flag = TRUE;
        gccb->gc_scratch = &gdt->sc_gcscratch[GDT_SCRATCH_SZ * i];
        gccb->gc_scratch_busbase = gdt->sc_gcscratch_busbase + GDT_SCRATCH_SZ * i;
 callout_init_mtx(&gccb->gc_timeout, &gdt->sc_lock, 0);
        SLIST_INSERT_HEAD(&gdt->sc_free_gccb, gccb, sle);
    }
    gdt->sc_init_level++;


    gdt->sc_dev = gdt_make_dev(gdt);


    mtx_lock(&gdt->sc_lock);
    gccb = gdt_get_ccb(gdt);
    if (gccb == ((void*)0)) {
 mtx_unlock(&gdt->sc_lock);
        device_printf(gdt->sc_devnode, "No free command index found\n");
        return (1);
    }
    bzero(gccb->gc_cmd, GDT_CMD_SZ);

    if (!gdt_internal_cmd(gdt, gccb, GDT_SCREENSERVICE, GDT_INIT,
                          0, 0, 0)) {
        device_printf(gdt->sc_devnode,
     "Screen service initialization error %d\n", gdt->sc_status);
        gdt_free_ccb(gdt, gccb);
 mtx_unlock(&gdt->sc_lock);
        return (1);
    }

    gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_UNFREEZE_IO,
                     0, 0, 0);

    if (!gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_INIT,
                          GDT_LINUX_OS, 0, 0)) {
        device_printf(gdt->sc_devnode, "Cache service initialization error %d\n",
               gdt->sc_status);
        gdt_free_ccb(gdt, gccb);
 mtx_unlock(&gdt->sc_lock);
        return (1);
    }
    cdev_cnt = (u_int16_t)gdt->sc_info;
    gdt->sc_fw_vers = gdt->sc_service;


    gdt_enc32(gccb->gc_scratch + GDT_IOC_VERSION, GDT_IOC_NEWEST);
    gccb->gc_scratch[GDT_IOC_LIST_ENTRIES] = GDT_MAXBUS;
    gccb->gc_scratch[GDT_IOC_FIRST_CHAN] = 0;
    gccb->gc_scratch[GDT_IOC_LAST_CHAN] = GDT_MAXBUS - 1;
    gdt_enc32(gccb->gc_scratch + GDT_IOC_LIST_OFFSET, GDT_IOC_HDR_SZ);
    if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_IOCTL,
                         GDT_IOCHAN_RAW_DESC, GDT_INVALID_CHANNEL,
                         GDT_IOC_HDR_SZ + GDT_MAXBUS * GDT_RAWIOC_SZ)) {
        gdt->sc_bus_cnt = gccb->gc_scratch[GDT_IOC_CHAN_COUNT];
        for (i = 0; i < gdt->sc_bus_cnt; i++) {
            id = gccb->gc_scratch[GDT_IOC_HDR_SZ +
                                 i * GDT_RAWIOC_SZ + GDT_RAWIOC_PROC_ID];
            gdt->sc_bus_id[i] = id < GDT_MAXID_FC ? id : 0xff;
        }
    } else {

        for (i = 0; i < GDT_MAXBUS; i++) {
            gdt_enc32(gccb->gc_scratch + GDT_GETCH_CHANNEL_NO, i);
            if (!gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_IOCTL,
                                  GDT_SCSI_CHAN_CNT | GDT_L_CTRL_PATTERN,
                                  GDT_IO_CHANNEL | GDT_INVALID_CHANNEL,
                                  GDT_GETCH_SZ)) {
                if (i == 0) {
                    device_printf(gdt->sc_devnode, "Cannot get channel count, "
                           "error %d\n", gdt->sc_status);
                    gdt_free_ccb(gdt, gccb);
      mtx_unlock(&gdt->sc_lock);
                    return (1);
                }
                break;
            }
            gdt->sc_bus_id[i] =
                (gccb->gc_scratch[GDT_GETCH_SIOP_ID] < GDT_MAXID_FC) ?
                gccb->gc_scratch[GDT_GETCH_SIOP_ID] : 0xff;
        }
        gdt->sc_bus_cnt = i;
    }

    gdt->sc_virt_bus = gdt->sc_bus_cnt;
    gdt->sc_bus_cnt++;

    if (!gdt_internal_cmd(gdt, gccb, GDT_SCSIRAWSERVICE, GDT_INIT,
                          0, 0, 0)) {
            device_printf(gdt->sc_devnode,
  "Raw service initialization error %d\n", gdt->sc_status);
            gdt_free_ccb(gdt, gccb);
     mtx_unlock(&gdt->sc_lock);
            return (1);
    }


    gdt->sc_raw_feat = 0;
    if (gdt_internal_cmd(gdt, gccb, GDT_SCSIRAWSERVICE, GDT_SET_FEAT,
                         GDT_SCATTER_GATHER, 0, 0)) {
        if (gdt_internal_cmd(gdt, gccb, GDT_SCSIRAWSERVICE, GDT_GET_FEAT,
                             0, 0, 0)) {
            gdt->sc_raw_feat = gdt->sc_info;
            if (!(gdt->sc_info & GDT_SCATTER_GATHER)) {
                panic("%s: Scatter/Gather Raw Service "
      "required but not supported!\n",
      device_get_nameunit(gdt->sc_devnode));
                gdt_free_ccb(gdt, gccb);
  mtx_unlock(&gdt->sc_lock);
                return (1);
            }
        }
    }


    gdt->sc_cache_feat = 0;
    if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_SET_FEAT,
                         0, GDT_SCATTER_GATHER, 0)) {
        if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_GET_FEAT,
                             0, 0, 0)) {
            gdt->sc_cache_feat = gdt->sc_info;
            if (!(gdt->sc_info & GDT_SCATTER_GATHER)) {
                panic("%s: Scatter/Gather Cache Service "
      "required but not supported!\n",
      device_get_nameunit(gdt->sc_devnode));
                gdt_free_ccb(gdt, gccb);
  mtx_unlock(&gdt->sc_lock);
                return (1);
            }
        }
    }


    gdt_enc32(gccb->gc_scratch + GDT_OEM_VERSION, 0x01);
    gdt_enc32(gccb->gc_scratch + GDT_OEM_BUFSIZE, sizeof(gdt_oem_record_t));
    if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_IOCTL,
                         GDT_OEM_STR_RECORD, GDT_INVALID_CHANNEL,
                         sizeof(gdt_oem_str_record_t))) {
     strncpy(gdt->oem_name, ((gdt_oem_str_record_t *)
            gccb->gc_scratch)->text.scsi_host_drive_inquiry_vendor_id, 7);
  gdt->oem_name[7]='\0';
 } else {

  if (gdt->sc_vendor == INTEL_VENDOR_ID_IIR)
            strcpy(gdt->oem_name,"Intel  ");
        else
            strcpy(gdt->oem_name,"ICP    ");
    }


    for (i = 0; i < cdev_cnt && i < GDT_MAX_HDRIVES; i++) {
        if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE, GDT_INFO,
                             i, 0, 0)) {
            gdt->sc_hdr[i].hd_present = 1;
            gdt->sc_hdr[i].hd_size = gdt->sc_info;




            gdt->sc_hdr[i].hd_size &= ~GDT_SECS32;
            if (gdt->sc_info2 == 0)
                gdt_eval_mapping(gdt->sc_hdr[i].hd_size,
                                 &drv_cyls, &drv_hds, &drv_secs);
            else {
                drv_hds = gdt->sc_info2 & 0xff;
                drv_secs = (gdt->sc_info2 >> 8) & 0xff;
                drv_cyls = gdt->sc_hdr[i].hd_size / drv_hds /
                    drv_secs;
            }
            gdt->sc_hdr[i].hd_heads = drv_hds;
            gdt->sc_hdr[i].hd_secs = drv_secs;

            gdt->sc_hdr[i].hd_size = drv_cyls * drv_hds * drv_secs;

            if (gdt_internal_cmd(gdt, gccb, GDT_CACHESERVICE,
                                 GDT_DEVTYPE, i, 0, 0))
                gdt->sc_hdr[i].hd_devtype = gdt->sc_info;
        }
    }

    GDT_DPRINTF(GDT_D_INIT, ("dpmem %x %d-bus %d cache device%s\n",
                             gdt->sc_dpmembase,
                             gdt->sc_bus_cnt, cdev_cnt,
                             cdev_cnt == 1 ? "" : "s"));
    gdt_free_ccb(gdt, gccb);
    mtx_unlock(&gdt->sc_lock);

    atomic_add_int(&gdt_cnt, 1);
    return (0);
}
