
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {int sc_flags; int sc_dev; int sc_q2free; } ;
struct ubsec_q2 {int dummy; } ;
struct cryptkop {int krp_op; int krp_status; int * krp_callback; } ;
typedef int device_t ;




 int EINVAL ;
 int EOPNOTSUPP ;
 int SIMPLEQ_EMPTY (int *) ;
 struct ubsec_q2* SIMPLEQ_FIRST (int *) ;
 int SIMPLEQ_REMOVE_HEAD (int *,int ) ;
 int UBS_FLAGS_HWNORM ;
 int crypto_kdone (struct cryptkop*) ;
 struct ubsec_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int q_next ;
 int ubsec_kfree (struct ubsec_softc*,struct ubsec_q2*) ;
 int ubsec_kprocess_modexp_hw (struct ubsec_softc*,struct cryptkop*,int) ;
 int ubsec_kprocess_modexp_sw (struct ubsec_softc*,struct cryptkop*,int) ;
 int ubsec_kprocess_rsapriv (struct ubsec_softc*,struct cryptkop*,int) ;

__attribute__((used)) static int
ubsec_kprocess(device_t dev, struct cryptkop *krp, int hint)
{
 struct ubsec_softc *sc = device_get_softc(dev);
 int r;

 if (krp == ((void*)0) || krp->krp_callback == ((void*)0))
  return (EINVAL);

 while (!SIMPLEQ_EMPTY(&sc->sc_q2free)) {
  struct ubsec_q2 *q;

  q = SIMPLEQ_FIRST(&sc->sc_q2free);
  SIMPLEQ_REMOVE_HEAD(&sc->sc_q2free, q_next);
  ubsec_kfree(sc, q);
 }

 switch (krp->krp_op) {
 case 129:
  if (sc->sc_flags & UBS_FLAGS_HWNORM)
   r = ubsec_kprocess_modexp_hw(sc, krp, hint);
  else
   r = ubsec_kprocess_modexp_sw(sc, krp, hint);
  break;
 case 128:
  return (ubsec_kprocess_rsapriv(sc, krp, hint));
 default:
  device_printf(sc->sc_dev, "kprocess: invalid op 0x%x\n",
      krp->krp_op);
  krp->krp_status = EOPNOTSUPP;
  crypto_kdone(krp);
  return (0);
 }
 return (0);
}
