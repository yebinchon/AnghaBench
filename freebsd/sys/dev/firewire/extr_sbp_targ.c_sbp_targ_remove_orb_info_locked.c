
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp_targ_login {int orbs; } ;
struct orb_info {int dummy; } ;


 int STAILQ_REMOVE (int *,struct orb_info*,int ,int ) ;
 int link ;
 int orb_info ;

__attribute__((used)) static __inline void
sbp_targ_remove_orb_info_locked(struct sbp_targ_login *login, struct orb_info *orbi)
{
 STAILQ_REMOVE(&login->orbs, orbi, orb_info, link);
}
