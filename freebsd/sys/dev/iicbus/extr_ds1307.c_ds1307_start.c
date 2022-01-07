
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct ds1307_softc {int sc_dev; scalar_t__ sc_mcp7941x; int enum_hook; } ;
typedef scalar_t__ device_t ;


 int CLOCKF_SETTIME_NO_ADJ ;
 int CTLFLAG_MPSAFE ;
 int CTLFLAG_RW ;
 int CTLTYPE_UINT ;
 int DS1307_SECS ;
 int DS1307_SECS_CH ;
 int OID_AUTO ;
 int SYSCTL_ADD_PROC (struct sysctl_ctx_list*,struct sysctl_oid_list*,int ,char*,int,struct ds1307_softc*,int ,int ,char*,char*) ;
 struct sysctl_oid_list* SYSCTL_CHILDREN (struct sysctl_oid*) ;
 int clock_register_flags (scalar_t__,int,int ) ;
 int clock_schedule (scalar_t__,int) ;
 int config_intrhook_disestablish (int *) ;
 struct ds1307_softc* device_get_softc (scalar_t__) ;
 struct sysctl_ctx_list* device_get_sysctl_ctx (scalar_t__) ;
 struct sysctl_oid* device_get_sysctl_tree (scalar_t__) ;
 int device_printf (int ,char*) ;
 scalar_t__ ds1307_read1 (int ,int ,int*) ;
 int ds1307_sqw_freq_sysctl ;
 int ds1307_sqw_out_sysctl ;
 int ds1307_sqwe_sysctl ;

__attribute__((used)) static void
ds1307_start(void *xdev)
{
 device_t dev;
 struct ds1307_softc *sc;
 struct sysctl_ctx_list *ctx;
 struct sysctl_oid *tree_node;
 struct sysctl_oid_list *tree;
 uint8_t secs;
 uint8_t osc_en;

 dev = (device_t)xdev;
 sc = device_get_softc(dev);
 ctx = device_get_sysctl_ctx(dev);
 tree_node = device_get_sysctl_tree(dev);
 tree = SYSCTL_CHILDREN(tree_node);

 config_intrhook_disestablish(&sc->enum_hook);


 if (ds1307_read1(sc->sc_dev, DS1307_SECS, &secs) != 0) {
  device_printf(sc->sc_dev, "cannot read from RTC.\n");
  return;
 }
 if (sc->sc_mcp7941x)
  osc_en = 0x80;
 else
  osc_en = 0x00;

 if (((secs & DS1307_SECS_CH) ^ osc_en) != 0) {
  device_printf(sc->sc_dev,
      "WARNING: RTC clock stopped, check the battery.\n");
 }


 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "sqwe",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds1307_sqwe_sysctl, "IU", "DS1307 square-wave enable");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "sqw_freq",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds1307_sqw_freq_sysctl, "IU",
     "DS1307 square-wave output frequency");
 SYSCTL_ADD_PROC(ctx, tree, OID_AUTO, "sqw_out",
     CTLFLAG_RW | CTLTYPE_UINT | CTLFLAG_MPSAFE, sc, 0,
     ds1307_sqw_out_sysctl, "IU", "DS1307 square-wave output state");






 clock_register_flags(dev, 1000000, CLOCKF_SETTIME_NO_ADJ);
 clock_schedule(dev, 1);
}
