
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct tp_params {int ingress_config; } ;
struct TYPE_3__ {scalar_t__ ftids_in_use; scalar_t__ hpftids_in_use; } ;
struct TYPE_4__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ tids; TYPE_2__ params; } ;


 int EBUSY ;
 int F_VNIC ;
 int HOLD_LOCK ;
 int INTR_OK ;
 int LOCK_HELD ;
 int SLEEP_OK ;
 int ULD_TOM ;
 int begin_synchronized_op (struct adapter*,int *,int,char*) ;
 int end_synchronized_op (struct adapter*,int ) ;
 int mode_to_fconf (int) ;
 int mode_to_iconf (int) ;
 int t4_set_filter_mode (struct adapter*,int,int) ;
 scalar_t__ uld_active (struct adapter*,int ) ;

int
set_filter_mode(struct adapter *sc, uint32_t mode)
{
 struct tp_params *tpp = &sc->params.tp;
 uint32_t fconf, iconf;
 int rc;

 iconf = mode_to_iconf(mode);
 if ((iconf ^ tpp->ingress_config) & F_VNIC) {
  return (EBUSY);
 }

 fconf = mode_to_fconf(mode);

 rc = begin_synchronized_op(sc, ((void*)0), HOLD_LOCK | SLEEP_OK | INTR_OK,
     "t4setfm");
 if (rc)
  return (rc);

 if (sc->tids.ftids_in_use > 0 || sc->tids.hpftids_in_use > 0) {
  rc = EBUSY;
  goto done;
 }
 rc = -t4_set_filter_mode(sc, fconf, 1);
done:
 end_synchronized_op(sc, LOCK_HELD);
 return (rc);
}
