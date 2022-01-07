
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int dummy; } ;
struct lio_soft_command {scalar_t__ ctxptr; } ;
struct lio_ctrl_pkt {int (* cb_fn ) (struct lio_ctrl_pkt*) ;} ;


 int lio_free_soft_command (struct octeon_device*,struct lio_soft_command*) ;
 int stub1 (struct lio_ctrl_pkt*) ;

__attribute__((used)) static void
lio_ctrl_callback(struct octeon_device *oct, uint32_t status, void *sc_ptr)
{
 struct lio_soft_command *sc = (struct lio_soft_command *)sc_ptr;
 struct lio_ctrl_pkt *nctrl;

 nctrl = (struct lio_ctrl_pkt *)sc->ctxptr;
 if (!status && nctrl->cb_fn)
  nctrl->cb_fn(nctrl);

 lio_free_soft_command(oct, sc);
}
