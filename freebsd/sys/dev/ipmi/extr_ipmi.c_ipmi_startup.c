
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipmi_softc {int (* ipmi_startup ) (struct ipmi_softc*) ;int ipmi_dev_support; void* ipmi_power_cycle_tag; int ipmi_watchdog_pretimeout; int ipmi_watchdog_actions; scalar_t__ ipmi_watchdog_active; TYPE_1__* ipmi_cdev; void* ipmi_shutdown_tag; void* ipmi_watchdog_tag; scalar_t__ ipmi_driver_requests_polled; int ipmi_pending_requests; int ipmi_request_added; int ipmi_io_lock; int ipmi_requests_lock; int ipmi_dev; int ipmi_ich; } ;
struct ipmi_request {int ir_compcode; int ir_replylen; int* ir_reply; int* ir_request; } ;
typedef int device_t ;
struct TYPE_2__ {struct ipmi_softc* si_drv1; } ;


 void* EVENTHANDLER_REGISTER (int ,int ,struct ipmi_softc*,scalar_t__) ;
 int EWOULDBLOCK ;
 int GID_OPERATOR ;
 int IPMI_ADDR (int ,int ) ;
 int IPMI_ADS_CHASSIS ;
 int IPMI_ALLOC_DRIVER_REQUEST (struct ipmi_request*,int ,int ,int ,int) ;
 int IPMI_APP_REQUEST ;
 int IPMI_CLEAR_FLAGS ;
 int IPMI_GET_CHANNEL_INFO ;
 int IPMI_GET_DEVICE_ID ;
 int IPMI_GET_WDOG ;
 int IPMI_INIT_DRIVER_REQUEST (struct ipmi_request*,int ,int ,int,int ) ;
 int IPMI_SET_WD_ACTION_POWER_CYCLE ;
 int MAX_TIMEOUT ;
 int MTX_DEF ;
 scalar_t__ SHUTDOWN_PRI_LAST ;
 int TAILQ_INIT (int *) ;
 int UID_ROOT ;
 int config_intrhook_disestablish (int *) ;
 int cv_init (int *,char*) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ipmi_cdevsw ;
 int ipmi_power_cycle ;
 scalar_t__ ipmi_reset_watchdog (struct ipmi_softc*) ;
 int ipmi_set_watchdog (struct ipmi_softc*,scalar_t__) ;
 int ipmi_shutdown_event ;
 int ipmi_submit_driver_request (struct ipmi_softc*,struct ipmi_request*,int ) ;
 int ipmi_wd_event ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ on ;
 int shutdown_final ;
 int shutdown_pre_sync ;
 int stub1 (struct ipmi_softc*) ;
 int watchdog_list ;
 int wd_pretimeout_countdown ;
 scalar_t__ wd_startup_countdown ;
 int wd_timer_actions ;

__attribute__((used)) static void
ipmi_startup(void *arg)
{
 struct ipmi_softc *sc = arg;
 struct ipmi_request *req;
 device_t dev;
 int error, i;

 config_intrhook_disestablish(&sc->ipmi_ich);
 dev = sc->ipmi_dev;


 mtx_init(&sc->ipmi_requests_lock, "ipmi requests", ((void*)0), MTX_DEF);
 mtx_init(&sc->ipmi_io_lock, "ipmi io", ((void*)0), MTX_DEF);
 cv_init(&sc->ipmi_request_added, "ipmireq");
 TAILQ_INIT(&sc->ipmi_pending_requests);


 error = sc->ipmi_startup(sc);
 if (error) {
  device_printf(dev, "Failed to initialize interface: %d\n",
      error);
  return;
 }


 IPMI_ALLOC_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_APP_REQUEST, 0),
     IPMI_GET_DEVICE_ID, 0, 15);

 error = ipmi_submit_driver_request(sc, req, MAX_TIMEOUT);
 if (error == EWOULDBLOCK) {
  device_printf(dev, "Timed out waiting for GET_DEVICE_ID\n");
  return;
 } else if (error) {
  device_printf(dev, "Failed GET_DEVICE_ID: %d\n", error);
  return;
 } else if (req->ir_compcode != 0) {
  device_printf(dev,
      "Bad completion code for GET_DEVICE_ID: %d\n",
      req->ir_compcode);
  return;
 } else if (req->ir_replylen < 5) {
  device_printf(dev, "Short reply for GET_DEVICE_ID: %d\n",
      req->ir_replylen);
  return;
 }

 device_printf(dev, "IPMI device rev. %d, firmware rev. %d.%d%d, "
     "version %d.%d, device support mask %#x\n",
     req->ir_reply[1] & 0x0f,
     req->ir_reply[2] & 0x7f, req->ir_reply[3] >> 4, req->ir_reply[3] & 0x0f,
     req->ir_reply[4] & 0x0f, req->ir_reply[4] >> 4, req->ir_reply[5]);

 sc->ipmi_dev_support = req->ir_reply[5];

 IPMI_INIT_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_APP_REQUEST, 0),
     IPMI_CLEAR_FLAGS, 1, 0);

 ipmi_submit_driver_request(sc, req, 0);


 if (req->ir_compcode == 0xc0) {
  device_printf(dev, "Clear flags is busy\n");
 }
 if (req->ir_compcode == 0xc1) {
  device_printf(dev, "Clear flags illegal\n");
 }

 for (i = 0; i < 8; i++) {
  IPMI_INIT_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_APP_REQUEST, 0),
      IPMI_GET_CHANNEL_INFO, 1, 0);
  req->ir_request[0] = i;

  ipmi_submit_driver_request(sc, req, 0);

  if (req->ir_compcode != 0)
   break;
 }
 device_printf(dev, "Number of channels %d\n", i);





 if (sc->ipmi_driver_requests_polled) {
  IPMI_INIT_DRIVER_REQUEST(req, IPMI_ADDR(IPMI_APP_REQUEST, 0),
      IPMI_GET_WDOG, 0, 0);

  ipmi_submit_driver_request(sc, req, 0);

  if (req->ir_compcode == 0x00) {
   device_printf(dev, "Attached watchdog\n");

   sc->ipmi_watchdog_tag = EVENTHANDLER_REGISTER(
    watchdog_list, ipmi_wd_event, sc, 0);
   sc->ipmi_shutdown_tag = EVENTHANDLER_REGISTER(
    shutdown_pre_sync, ipmi_shutdown_event,
    sc, 0);
  }
 }

 sc->ipmi_cdev = make_dev(&ipmi_cdevsw, device_get_unit(dev),
     UID_ROOT, GID_OPERATOR, 0660, "ipmi%d", device_get_unit(dev));
 if (sc->ipmi_cdev == ((void*)0)) {
  device_printf(dev, "Failed to create cdev\n");
  return;
 }
 sc->ipmi_cdev->si_drv1 = sc;






 if (on && wd_startup_countdown > 0) {
  wd_timer_actions = IPMI_SET_WD_ACTION_POWER_CYCLE;
  if (ipmi_set_watchdog(sc, wd_startup_countdown) == 0 &&
      ipmi_reset_watchdog(sc) == 0) {
   sc->ipmi_watchdog_active = wd_startup_countdown;
   sc->ipmi_watchdog_actions = wd_timer_actions;
   sc->ipmi_watchdog_pretimeout = wd_pretimeout_countdown;
  } else
   (void)ipmi_set_watchdog(sc, 0);
  ipmi_reset_watchdog(sc);
 } else if (!on)
  (void)ipmi_set_watchdog(sc, 0);





 if (sc->ipmi_dev_support & IPMI_ADS_CHASSIS) {
  device_printf(dev, "Establishing power cycle handler\n");
  sc->ipmi_power_cycle_tag = EVENTHANDLER_REGISTER(shutdown_final,
      ipmi_power_cycle, sc, SHUTDOWN_PRI_LAST - 2);
 }
}
