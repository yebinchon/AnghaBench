
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mly_softc {int mly_timeout; TYPE_1__* mly_dev_t; int mly_dev; int mly_task_complete; int mly_lock; int mly_periodic; } ;
typedef int device_t ;
struct TYPE_2__ {struct mly_softc* si_drv1; } ;


 int GID_OPERATOR ;
 int MLY_CMD_TIMEOUT ;
 int MLY_LOCK (struct mly_softc*) ;
 int MLY_MASK_INTERRUPTS (struct mly_softc*) ;
 int MLY_UNLOCK (struct mly_softc*) ;
 int MLY_UNMASK_INTERRUPTS (struct mly_softc*) ;
 int MTX_DEF ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TASK_INIT (int *,int ,int ,struct mly_softc*) ;
 int UID_ROOT ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int ,struct mly_softc*) ;
 int debug_called (int) ;
 struct mly_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int hz ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,scalar_t__) ;
 int mly_alloc_commands (struct mly_softc*) ;
 int mly_cam_attach (struct mly_softc*) ;
 int mly_cdevsw ;
 int mly_complete_handler ;
 int mly_describe_controller (struct mly_softc*) ;
 int mly_enable_mmbox (struct mly_softc*) ;
 int mly_free (struct mly_softc*) ;
 int mly_fwhandshake (struct mly_softc*) ;
 int mly_get_controllerinfo (struct mly_softc*) ;
 int mly_get_eventstatus (struct mly_softc*) ;
 int mly_initq_busy (struct mly_softc*) ;
 int mly_initq_complete (struct mly_softc*) ;
 int mly_initq_free (struct mly_softc*) ;
 int mly_pci_attach (struct mly_softc*) ;
 int mly_periodic (void*) ;
 int mly_release_commands (struct mly_softc*) ;
 int mly_scan_devices (struct mly_softc*) ;
 struct mly_softc* mly_softc0 ;
 int mly_timeout ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
mly_attach(device_t dev)
{
    struct mly_softc *sc = device_get_softc(dev);
    int error;

    debug_called(1);

    sc->mly_dev = dev;
    mtx_init(&sc->mly_lock, "mly", ((void*)0), MTX_DEF);
    callout_init_mtx(&sc->mly_periodic, &sc->mly_lock, 0);
    if ((error = mly_pci_attach(sc)) != 0)
 goto out;




    mly_initq_free(sc);
    mly_initq_busy(sc);
    mly_initq_complete(sc);




    TASK_INIT(&sc->mly_task_complete, 0, mly_complete_handler, sc);


    MLY_MASK_INTERRUPTS(sc);






    if ((error = mly_fwhandshake(sc)))
 goto out;




    if ((error = mly_alloc_commands(sc)))
 goto out;




    MLY_LOCK(sc);
    error = mly_get_controllerinfo(sc);
    MLY_UNLOCK(sc);
    if (error)
 goto out;




    mly_release_commands(sc);
    if ((error = mly_alloc_commands(sc)))
 goto out;





    MLY_LOCK(sc);
    error = mly_get_eventstatus(sc);




    if (error == 0)
 error = mly_enable_mmbox(sc);
    MLY_UNLOCK(sc);
    if (error)
 goto out;




    if ((error = mly_cam_attach(sc)))
 goto out;




    mly_describe_controller(sc);




    MLY_LOCK(sc);
    mly_scan_devices(sc);






    mly_periodic((void *)sc);
    MLY_UNLOCK(sc);




    sc->mly_dev_t = make_dev(&mly_cdevsw, 0, UID_ROOT, GID_OPERATOR,
        S_IRUSR | S_IWUSR, "mly%d", device_get_unit(sc->mly_dev));
    sc->mly_dev_t->si_drv1 = sc;


    MLY_UNMASK_INTERRUPTS(sc);





 out:
    if (error != 0)
 mly_free(sc);
    return(error);
}
