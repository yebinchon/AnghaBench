
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmxnet3_softc {scalar_t__ vmx_link_active; int vmx_ctx; } ;
typedef int if_ctx_t ;


 int IF_Gbps (int) ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int iflib_link_state_change (int ,int ,int ) ;
 int vmxnet3_link_is_up (struct vmxnet3_softc*) ;

__attribute__((used)) static void
vmxnet3_link_status(struct vmxnet3_softc *sc)
{
 if_ctx_t ctx;
 uint64_t speed;
 int link;

 ctx = sc->vmx_ctx;
 link = vmxnet3_link_is_up(sc);
 speed = IF_Gbps(10);

 if (link != 0 && sc->vmx_link_active == 0) {
  sc->vmx_link_active = 1;
  iflib_link_state_change(ctx, LINK_STATE_UP, speed);
 } else if (link == 0 && sc->vmx_link_active != 0) {
  sc->vmx_link_active = 0;
  iflib_link_state_change(ctx, LINK_STATE_DOWN, speed);
 }
}
