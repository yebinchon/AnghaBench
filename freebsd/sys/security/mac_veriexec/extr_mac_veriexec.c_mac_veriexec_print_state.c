
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int VERIEXEC_STATE_ACTIVE ;
 int VERIEXEC_STATE_ENFORCE ;
 int VERIEXEC_STATE_INACTIVE ;
 int VERIEXEC_STATE_LOADED ;
 int VERIEXEC_STATE_LOCKED ;
 int mac_veriexec_state ;
 int sbuf_printf (struct sbuf*,char*) ;
 int sbuf_trim (struct sbuf*) ;

__attribute__((used)) static void
mac_veriexec_print_state(struct sbuf *sbp)
{

 if (mac_veriexec_state & VERIEXEC_STATE_INACTIVE)
  sbuf_printf(sbp, "inactive ");
 if (mac_veriexec_state & VERIEXEC_STATE_LOADED)
  sbuf_printf(sbp, "loaded ");
 if (mac_veriexec_state & VERIEXEC_STATE_ACTIVE)
  sbuf_printf(sbp, "active ");
 if (mac_veriexec_state & VERIEXEC_STATE_ENFORCE)
  sbuf_printf(sbp, "enforce ");
 if (mac_veriexec_state & VERIEXEC_STATE_LOCKED)
  sbuf_printf(sbp, "locked ");
 if (mac_veriexec_state != 0)
  sbuf_trim(sbp);
}
