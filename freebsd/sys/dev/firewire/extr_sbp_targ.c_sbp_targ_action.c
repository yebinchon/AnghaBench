
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct cam_sim {int dummy; } ;


 int sbp_targ_action1 (struct cam_sim*,union ccb*) ;
 int splfw () ;
 int splx (int) ;

__attribute__((used)) static void
sbp_targ_action(struct cam_sim *sim, union ccb *ccb)
{
 int s;

 s = splfw();
 sbp_targ_action1(sim, ccb);
 splx(s);
}
