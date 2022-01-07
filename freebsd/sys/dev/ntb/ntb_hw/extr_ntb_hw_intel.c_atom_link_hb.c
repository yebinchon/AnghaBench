
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {scalar_t__ last_ts; int heartbeat_timer; int lr_timer; int device; } ;
typedef scalar_t__ sbintime_t ;


 scalar_t__ NTB_HB_TIMEOUT ;
 scalar_t__ atom_link_is_err (struct ntb_softc*) ;
 int callout_reset (int *,scalar_t__,void (*) (void*),struct ntb_softc*) ;
 scalar_t__ hz ;
 scalar_t__ intel_ntb_poll_link (struct ntb_softc*) ;
 scalar_t__ link_is_up (struct ntb_softc*) ;
 int ntb_link_event (int ) ;
 void recover_atom_link (void*) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
atom_link_hb(void *arg)
{
 struct ntb_softc *ntb = arg;
 sbintime_t timo, poll_ts;

 timo = NTB_HB_TIMEOUT * hz;
 poll_ts = ntb->last_ts + timo;





 if ((sbintime_t)ticks - poll_ts < 0 && link_is_up(ntb)) {
  timo = poll_ts - ticks;
  goto out;
 }

 if (intel_ntb_poll_link(ntb))
  ntb_link_event(ntb->device);

 if (!link_is_up(ntb) && atom_link_is_err(ntb)) {

  callout_reset(&ntb->lr_timer, 0, recover_atom_link, ntb);
  return;
 }

out:
 callout_reset(&ntb->heartbeat_timer, timo, atom_link_hb, ntb);
}
