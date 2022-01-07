
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rs_code; } ;
struct mlx_softc {int mlx_iftype; int (* mlx_fw_handshake ) (struct mlx_softc*,int*,int*,int*,int) ;int mlx_currevent; int mlx_timeout; TYPE_3__* mlx_dev_t; int mlx_dev; TYPE_1__ mlx_rebuildstat; scalar_t__ mlx_background; TYPE_2__* mlx_enq2; int mlx_buffer_dmat; int mlx_io_lock; int mlx_parent_dmat; int mlx_intr; int * mlx_irq; int (* mlx_intaction ) (struct mlx_softc*,int ) ;int mlx_findcomplete; int mlx_tryqueue; int mlx_bioq; int mlx_freecmds; int mlx_work; } ;
struct mlx_enquiry_old {int me_fwminor; int me_fwmajor; } ;
struct mlx_enquiry2 {int dummy; } ;
struct TYPE_6__ {struct mlx_softc* si_drv1; } ;
struct TYPE_5__ {int me_firmware_id; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXSIZE_32BIT ;
 int DELAY (int) ;
 int ENOMEM ;
 int ENXIO ;
 int GID_OPERATOR ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int MLX_CMD_ENQUIRY2 ;
 int MLX_CMD_ENQUIRY_OLD ;




 int MLX_INTACTION_DISABLE ;
 int MLX_IO_LOCK (struct mlx_softc*) ;
 int MLX_IO_UNLOCK (struct mlx_softc*) ;
 int MLX_MAXPHYS ;
 int MLX_NSEG ;
 int MLX_REBUILDSTAT_IDLE ;
 int M_DEVBUF ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int bioq_init (int *) ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int ,int ,int ,int ,int *,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct mlx_softc*,int *) ;
 int busdma_lock_mutex ;
 int callout_reset (int *,int ,int ,struct mlx_softc*) ;
 int debug_called (int) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct mlx_enquiry_old*,int ) ;
 int hz ;
 TYPE_3__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mlx_cdevsw ;
 int mlx_describe_controller (struct mlx_softc*) ;
 void* mlx_enquire (struct mlx_softc*,int ,int,int *) ;
 int mlx_fw_message (struct mlx_softc*,int,int,int) ;
 int mlx_intr ;
 int mlx_periodic ;
 int mlx_sglist_map (struct mlx_softc*) ;
 int mlx_v3_findcomplete ;
 int mlx_v3_fw_handshake (struct mlx_softc*,int*,int*,int*,int) ;
 int mlx_v3_intaction (struct mlx_softc*,int ) ;
 int mlx_v3_tryqueue ;
 int mlx_v4_findcomplete ;
 int mlx_v4_fw_handshake (struct mlx_softc*,int*,int*,int*,int) ;
 int mlx_v4_intaction (struct mlx_softc*,int ) ;
 int mlx_v4_tryqueue ;
 int mlx_v5_findcomplete ;
 int mlx_v5_fw_handshake (struct mlx_softc*,int*,int*,int*,int) ;
 int mlx_v5_intaction (struct mlx_softc*,int ) ;
 int mlx_v5_tryqueue ;
 int stub1 (struct mlx_softc*,int ) ;
 int stub2 (struct mlx_softc*,int*,int*,int*,int) ;

int
mlx_attach(struct mlx_softc *sc)
{
    struct mlx_enquiry_old *meo;
    int rid, error, fwminor, hscode, hserror, hsparam1, hsparam2, hsmsg;

    debug_called(1);




    TAILQ_INIT(&sc->mlx_work);
    TAILQ_INIT(&sc->mlx_freecmds);
    bioq_init(&sc->mlx_bioq);




    switch(sc->mlx_iftype) {
    case 131:
    case 130:
 sc->mlx_tryqueue = mlx_v3_tryqueue;
 sc->mlx_findcomplete = mlx_v3_findcomplete;
 sc->mlx_intaction = mlx_v3_intaction;
 sc->mlx_fw_handshake = mlx_v3_fw_handshake;
 break;
    case 129:
 sc->mlx_tryqueue = mlx_v4_tryqueue;
 sc->mlx_findcomplete = mlx_v4_findcomplete;
 sc->mlx_intaction = mlx_v4_intaction;
 sc->mlx_fw_handshake = mlx_v4_fw_handshake;
 break;
    case 128:
 sc->mlx_tryqueue = mlx_v5_tryqueue;
 sc->mlx_findcomplete = mlx_v5_findcomplete;
 sc->mlx_intaction = mlx_v5_intaction;
 sc->mlx_fw_handshake = mlx_v5_fw_handshake;
 break;
    default:
 return(ENXIO);
    }


    MLX_IO_LOCK(sc);
    sc->mlx_intaction(sc, MLX_INTACTION_DISABLE);
    MLX_IO_UNLOCK(sc);






    hsmsg = 0;
    DELAY(1000);
    while ((hscode = sc->mlx_fw_handshake(sc, &hserror, &hsparam1, &hsparam2,
 hsmsg == 0)) != 0) {

 if (hsmsg == 0) {
     device_printf(sc->mlx_dev, "controller initialisation in progress...\n");
     hsmsg = 1;
 }

 if (hscode == 2) {
     hscode = mlx_fw_message(sc, hserror, hsparam1, hsparam2);

     if (hscode != 0) {
  return(ENXIO);
     }
 }
    }
    if (hsmsg == 1)
 device_printf(sc->mlx_dev, "initialisation complete.\n");




    rid = 0;
    sc->mlx_irq = bus_alloc_resource_any(sc->mlx_dev, SYS_RES_IRQ, &rid,
        RF_SHAREABLE | RF_ACTIVE);
    if (sc->mlx_irq == ((void*)0)) {
 device_printf(sc->mlx_dev, "can't allocate interrupt\n");
 return(ENXIO);
    }
    error = bus_setup_intr(sc->mlx_dev, sc->mlx_irq, INTR_TYPE_BIO |
 INTR_ENTROPY | INTR_MPSAFE, ((void*)0), mlx_intr, sc, &sc->mlx_intr);
    if (error) {
 device_printf(sc->mlx_dev, "can't set up interrupt\n");
 return(ENXIO);
    }




    error = bus_dma_tag_create(sc->mlx_parent_dmat,
          1, 0,
          BUS_SPACE_MAXADDR,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0),
          MLX_MAXPHYS,
          MLX_NSEG,
          BUS_SPACE_MAXSIZE_32BIT,
          0,
          busdma_lock_mutex,
          &sc->mlx_io_lock,
          &sc->mlx_buffer_dmat);
    if (error != 0) {
 device_printf(sc->mlx_dev, "can't allocate buffer DMA tag\n");
 return(ENOMEM);
    }





    error = mlx_sglist_map(sc);
    if (error != 0) {
 device_printf(sc->mlx_dev, "can't make initial s/g list mapping\n");
 return(error);
    }




    sc->mlx_currevent = -1;




    MLX_IO_LOCK(sc);
    if ((sc->mlx_enq2 = mlx_enquire(sc, MLX_CMD_ENQUIRY2, sizeof(struct mlx_enquiry2), ((void*)0))) == ((void*)0)) {
 MLX_IO_UNLOCK(sc);
 device_printf(sc->mlx_dev, "ENQUIRY2 failed\n");
 return(ENXIO);
    }




    fwminor = (sc->mlx_enq2->me_firmware_id >> 8) & 0xff;
    switch(sc->mlx_iftype) {
    case 131:

 if ((meo = mlx_enquire(sc, MLX_CMD_ENQUIRY_OLD, sizeof(struct mlx_enquiry_old), ((void*)0))) == ((void*)0)) {
     MLX_IO_UNLOCK(sc);
     device_printf(sc->mlx_dev, "ENQUIRY_OLD failed\n");
     return(ENXIO);
 }
 sc->mlx_enq2->me_firmware_id = ('0' << 24) | (0 << 16) | (meo->me_fwminor << 8) | meo->me_fwmajor;


 if (meo->me_fwminor < 42) {
     device_printf(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
     device_printf(sc->mlx_dev, " *** WARNING *** Use revision 2.42 or later\n");
 }
 free(meo, M_DEVBUF);
 break;
    case 130:

 if (fwminor < 51) {
     device_printf(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
     device_printf(sc->mlx_dev, " *** WARNING *** Use revision 3.51 or later\n");
 }
 break;
    case 129:

 if (fwminor < 6) {
     device_printf(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
     device_printf(sc->mlx_dev, " *** WARNING *** Use revision 4.06 or later\n");
 }
 break;
    case 128:
 if (fwminor < 7) {
     device_printf(sc->mlx_dev, " *** WARNING *** This firmware revision is not recommended\n");
     device_printf(sc->mlx_dev, " *** WARNING *** Use revision 5.07 or later\n");
 }
 break;
    default:
 MLX_IO_UNLOCK(sc);
 return(ENXIO);
    }
    MLX_IO_UNLOCK(sc);




    error = mlx_sglist_map(sc);
    if (error != 0) {
 device_printf(sc->mlx_dev, "can't make final s/g list mapping\n");
 return(error);
    }




    sc->mlx_background = 0;
    sc->mlx_rebuildstat.rs_code = MLX_REBUILDSTAT_IDLE;




    sc->mlx_dev_t = make_dev(&mlx_cdevsw, 0, UID_ROOT, GID_OPERATOR,
        S_IRUSR | S_IWUSR, "mlx%d", device_get_unit(sc->mlx_dev));
    sc->mlx_dev_t->si_drv1 = sc;




    callout_reset(&sc->mlx_timeout, hz, mlx_periodic, sc);


    mlx_describe_controller(sc);

    return(0);
}
