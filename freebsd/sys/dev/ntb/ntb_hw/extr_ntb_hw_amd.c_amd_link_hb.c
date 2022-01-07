
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int hb_timer; int device; } ;


 int AMD_LINK_HB_TIMEOUT ;
 int amd_link_is_up (struct amd_ntb_softc*) ;
 scalar_t__ amd_ntb_poll_link (struct amd_ntb_softc*) ;
 int callout_reset (int *,int,void (*) (void*),struct amd_ntb_softc*) ;
 int ntb_link_event (int ) ;

__attribute__((used)) static void
amd_link_hb(void *arg)
{
 struct amd_ntb_softc *ntb = arg;

 if (amd_ntb_poll_link(ntb))
  ntb_link_event(ntb->device);

 if (!amd_link_is_up(ntb)) {
  callout_reset(&ntb->hb_timer, AMD_LINK_HB_TIMEOUT,
      amd_link_hb, ntb);
 } else {
  callout_reset(&ntb->hb_timer, (AMD_LINK_HB_TIMEOUT * 10),
      amd_link_hb, ntb);
 }
}
