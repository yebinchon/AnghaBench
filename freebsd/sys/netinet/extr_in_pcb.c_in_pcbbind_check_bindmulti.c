
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inpcb {int inp_flags2; TYPE_1__* inp_cred; } ;
struct TYPE_2__ {scalar_t__ cr_uid; } ;


 int INP_BINDMULTI ;

int
in_pcbbind_check_bindmulti(const struct inpcb *ni, const struct inpcb *oi)
{

 if ((ni->inp_flags2 & INP_BINDMULTI) &&
     (ni->inp_cred->cr_uid !=
     oi->inp_cred->cr_uid))
  return (0);


 if ((ni->inp_flags2 & INP_BINDMULTI) &&
     ((oi->inp_flags2 & INP_BINDMULTI) == 0))
  return (0);





 return (1);
}
