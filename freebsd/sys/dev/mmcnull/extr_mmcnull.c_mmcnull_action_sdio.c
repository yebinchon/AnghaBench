
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ccb {int dummy; } ccb ;
struct cam_sim {int dummy; } ;


 int mmcnull_action_sd (struct cam_sim*,union ccb*) ;

__attribute__((used)) static void
mmcnull_action_sdio(struct cam_sim *sim, union ccb *ccb) {
 mmcnull_action_sd(sim, ccb);
}
