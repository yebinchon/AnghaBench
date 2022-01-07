
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ses_ctrl_dev_slot {int common; } ;
struct TYPE_2__ {unsigned int elm_idx; int * cstat; } ;
typedef TYPE_1__ encioc_elm_status_t ;
typedef int elm_type_t ;
typedef int caddr_t ;




 int ENCIOC_GETELMSTAT ;
 int ENCIOC_SETELMSTAT ;
 int EXIT_FAILURE ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int ses_ctrl_common_set_select (int *,int) ;
 int ses_ctrl_dev_slot_set_rqst_fault (struct ses_ctrl_dev_slot*,int) ;
 int ses_ctrl_dev_slot_set_rqst_ident (struct ses_ctrl_dev_slot*,int) ;
 int xo_err (int ,char*) ;

__attribute__((used)) static void
do_led(int fd, unsigned int idx, elm_type_t type, bool onoff, bool setfault)
{
 int state = onoff ? 1 : 0;
 encioc_elm_status_t o;
 struct ses_ctrl_dev_slot *slot;

 o.elm_idx = idx;
 if (ioctl(fd, ENCIOC_GETELMSTAT, (caddr_t) &o) < 0) {
  close(fd);
  xo_err(EXIT_FAILURE, "ENCIOC_GETELMSTAT");
 }
 slot = (struct ses_ctrl_dev_slot *) &o.cstat[0];
 switch (type) {
 case 128:
 case 129:
  ses_ctrl_common_set_select(&slot->common, 1);
  if (setfault)
   ses_ctrl_dev_slot_set_rqst_fault(slot, state);
  else
   ses_ctrl_dev_slot_set_rqst_ident(slot, state);
  break;
 default:
  return;
 }
 if (ioctl(fd, ENCIOC_SETELMSTAT, (caddr_t) &o) < 0) {
  close(fd);
  xo_err(EXIT_FAILURE, "ENCIOC_SETELMSTAT");
 }
}
