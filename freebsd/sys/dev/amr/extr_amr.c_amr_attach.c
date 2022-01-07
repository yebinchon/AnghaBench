
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intr_config_hook {int dummy; } ;
struct TYPE_6__ {struct amr_softc* ich_arg; int ich_func; } ;
struct amr_softc {scalar_t__ amr_nextslot; scalar_t__ amr_maxio; int amr_dev; TYPE_3__ amr_ich; TYPE_1__* amr_dev_t; int * amr_pass; int amr_poll_command; int amr_get_work; int amr_submit_command; int amr_poll_command1; int amr_bioq; int amr_cmd_clusters; int amr_ready; int amr_freecmds; } ;
typedef int * device_t ;
struct TYPE_5__ {struct amr_softc* si_drv1; } ;


 scalar_t__ AMR_IS_QUARTZ (struct amr_softc*) ;
 int ENOMEM ;
 int ENXIO ;
 int GID_OPERATOR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int amr_alloccmd_cluster (struct amr_softc*) ;
 int amr_cdevsw ;
 int amr_describe_controller (struct amr_softc*) ;
 int amr_init_qhead (int *) ;
 int amr_init_sysctl (struct amr_softc*) ;
 int amr_quartz_get_work ;
 scalar_t__ amr_quartz_init (struct amr_softc*) ;
 int amr_quartz_poll_command ;
 int amr_quartz_poll_command1 ;
 int amr_quartz_submit_command ;
 scalar_t__ amr_query_controller (struct amr_softc*) ;
 int amr_startup ;
 int amr_std_attach_mailbox (struct amr_softc*) ;
 int amr_std_get_work ;
 scalar_t__ amr_std_init (struct amr_softc*) ;
 int amr_std_poll_command ;
 int amr_std_submit_command ;
 int bioq_init (int *) ;
 int bus_generic_attach (int ) ;
 int bzero (TYPE_3__*,int) ;
 scalar_t__ config_intrhook_establish (TYPE_3__*) ;
 int debug (int,char*) ;
 int debug_called (int) ;
 int * device_add_child (int ,char*,int) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int *,char*) ;
 int device_set_softc (int *,struct amr_softc*) ;
 int linux_no_adapter ;
 TYPE_1__* make_dev (int *,scalar_t__,int ,int ,int,char*,scalar_t__) ;
 int make_dev_alias (TYPE_1__*,char*) ;

int
amr_attach(struct amr_softc *sc)
{
    device_t child;

    debug_called(1);




    amr_init_qhead(&sc->amr_freecmds);
    amr_init_qhead(&sc->amr_ready);
    TAILQ_INIT(&sc->amr_cmd_clusters);
    bioq_init(&sc->amr_bioq);

    debug(2, "queue init done");




    if (AMR_IS_QUARTZ(sc)) {
 sc->amr_submit_command = amr_quartz_submit_command;
 sc->amr_get_work = amr_quartz_get_work;
 sc->amr_poll_command = amr_quartz_poll_command;
 sc->amr_poll_command1 = amr_quartz_poll_command1;
    } else {
 sc->amr_submit_command = amr_std_submit_command;
 sc->amr_get_work = amr_std_get_work;
 sc->amr_poll_command = amr_std_poll_command;
 amr_std_attach_mailbox(sc);
    }
    amr_alloccmd_cluster(sc);




    if (amr_query_controller(sc))
 return(ENXIO);

    debug(2, "controller query complete");




    while (sc->amr_nextslot < sc->amr_maxio)
 amr_alloccmd_cluster(sc);




    amr_init_sysctl(sc);




    child = device_add_child(sc->amr_dev, "amrp", -1);
    sc->amr_pass = child;
    if (child != ((void*)0)) {
 device_set_softc(child, sc);
 device_set_desc(child, "SCSI Passthrough Bus");
 bus_generic_attach(sc->amr_dev);
    }




    sc->amr_dev_t = make_dev(&amr_cdevsw, device_get_unit(sc->amr_dev), UID_ROOT, GID_OPERATOR,
        S_IRUSR | S_IWUSR, "amr%d", device_get_unit(sc->amr_dev));
    sc->amr_dev_t->si_drv1 = sc;
    linux_no_adapter++;
    if (device_get_unit(sc->amr_dev) == 0)
 make_dev_alias(sc->amr_dev_t, "megadev0");





    bzero(&sc->amr_ich, sizeof(struct intr_config_hook));
    sc->amr_ich.ich_func = amr_startup;
    sc->amr_ich.ich_arg = sc;
    if (config_intrhook_establish(&sc->amr_ich) != 0) {
 device_printf(sc->amr_dev, "can't establish configuration hook\n");
 return(ENOMEM);
    }




    amr_describe_controller(sc);

    debug(2, "attach complete");
    return(0);
}
