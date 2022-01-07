
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ds3231_softc {int sc_status; int sc_dev; int enum_hook; } ;
typedef scalar_t__ device_t ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RD ;
 int CTLFLAG_RW ;
 int CTLTYPE_INT ;
 int CTLTYPE_STRING ;
 int CTLTYPE_UINT ;
 int DS3231_STATUS_OSF ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ds3231_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int clock_register_flags (scalar_t__,int,int ) ;
 int clock_schedule (scalar_t__,int) ;
 int config_intrhook_disestablish (int *) ;
 struct ds3231_softc* device_get_softc (scalar_t__) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (scalar_t__) ;
 struct sysctl_oid* device_get_sysctl_tree (scalar_t__) ;
 int device_printf (int ,char*) ;
 int ds3231_bbsqw_sysctl ;
 int ds3231_conv_sysctl ;
 scalar_t__ ds3231_ctrl_read (struct ds3231_softc*) ;
 int ds3231_ctrl_write (struct ds3231_softc*) ;
 int ds3231_en32khz_sysctl ;
 int ds3231_sqw_freq_sysctl ;
 int ds3231_sqw_mode_sysctl ;
 scalar_t__ ds3231_status_read (struct ds3231_softc*) ;
 int ds3231_status_write (struct ds3231_softc*,int,int) ;
 int ds3231_temp_sysctl ;

__attribute__((used)) static void
ds3231_start(void *xdev)
{
 device_t dev;
 struct ds3231_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree_node;
 struct sysctl_oid_list *tree;

 dev = (device_t)xdev;
 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 tree_node = device_get_sysctl_tree(dev);
 tree = SYSCTL_CHILDREN(tree_node);

 config_intrhook_disestablish(&sc->enum_hook);
 if (ds3231_ctrl_read(sc) != 0)
  return;
 if (ds3231_status_read(sc) != 0)
  return;




 if (sc->sc_status & DS3231_STATUS_OSF) {
  device_printf(sc->sc_dev,
      "WARNING: RTC clock stopped, check the battery.\n");
 }
 ds3231_status_write(sc, 1, 1);
 ds3231_ctrl_write(sc);


 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "temperature",
     CTLTYPE_INT | CTLFLAG_RD | CTLFLAG_MPSAFE, sc, 0,
     ds3231_temp_sysctl, "IK", "Current temperature");

 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "temp_conv",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds3231_conv_sysctl, "IU",
     "DS3231 start a new temperature converstion");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "bbsqw",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds3231_bbsqw_sysctl, "IU",
     "DS3231 battery-backed square-wave output enable");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "sqw_freq",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds3231_sqw_freq_sysctl, "IU",
     "DS3231 square-wave output frequency");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "sqw_mode",
     CTLFLAG_RW | CTLTYPE_STRING | CTLFLAG_MPSAFE, sc, 0,
     ds3231_sqw_mode_sysctl, "A", "DS3231 SQW output mode control");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "32khz_enable",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds3231_en32khz_sysctl, "IU", "DS3231 enable the 32kHz output");






 clock_register_flags(dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
 clock_schedule(dev, 1);
}
