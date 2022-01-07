
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int nvme_ctrlr_poll (int ) ;
 int sim2ctrlr (struct cam_sim*) ;

__attribute__((used)) static void
nvme_sim_poll(struct cam_sim *sim)
{

 nvme_ctrlr_poll(sim2ctrlr(sim));
}
