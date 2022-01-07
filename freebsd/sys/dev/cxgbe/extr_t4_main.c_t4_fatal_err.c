
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dev; int flags; } ;


 int ADAPTER_LOCK (struct adapter*) ;
 int ADAPTER_UNLOCK (struct adapter*) ;
 int ADAP_ERR ;
 int ASSERT_SYNCHRONIZED_OP (struct adapter*) ;
 int LOG_ALERT ;
 int callout_reset (int *,int,int ,struct adapter*) ;
 int delayed_panic ;
 int device_get_nameunit (int ) ;
 int fatal_callout ;
 int hz ;
 int log (int ,char*,int ) ;
 scalar_t__ t4_panic_on_fatal_err ;
 int t4_shutdown_adapter (struct adapter*) ;

void
t4_fatal_err(struct adapter *sc, bool fw_error)
{

 t4_shutdown_adapter(sc);
 log(LOG_ALERT, "%s: encountered fatal error, adapter stopped.\n",
     device_get_nameunit(sc->dev));
 if (fw_error) {
  ASSERT_SYNCHRONIZED_OP(sc);
  sc->flags |= ADAP_ERR;
 } else {
  ADAPTER_LOCK(sc);
  sc->flags |= ADAP_ERR;
  ADAPTER_UNLOCK(sc);
 }

 if (t4_panic_on_fatal_err) {
  log(LOG_ALERT, "%s: panic on fatal error after 30s",
      device_get_nameunit(sc->dev));
  callout_reset(&fatal_callout, hz * 30, delayed_panic, sc);
 }
}
