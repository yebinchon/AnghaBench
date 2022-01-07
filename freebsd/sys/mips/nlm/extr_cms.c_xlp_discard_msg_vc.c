
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct nlm_fmn_msg {int dummy; } ;


 scalar_t__ nlm_fmn_msgrcv (int,int*,int*,int*,struct nlm_fmn_msg*) ;
 int nlm_restore_flags (scalar_t__) ;
 scalar_t__ nlm_save_flags_cop2 () ;

__attribute__((used)) static void
xlp_discard_msg_vc(u_int vcmask)
{
 struct nlm_fmn_msg msg;
 int srcid = 0, size = 0, code = 0, vc;
 uint32_t mflags, status;

 for (vc = 0; vc < 4; vc++) {
  for (;;) {
   mflags = nlm_save_flags_cop2();
   status = nlm_fmn_msgrcv(vc, &srcid,
       &size, &code, &msg);
   nlm_restore_flags(mflags);


   if (status != 0)
    break;
  }
 }
}
