
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hpt_iop_hba {TYPE_1__* ops; } ;
struct cam_sim {int dummy; } ;
struct TYPE_2__ {int (* iop_intr ) (struct hpt_iop_hba*) ;} ;


 struct hpt_iop_hba* cam_sim_softc (struct cam_sim*) ;
 int stub1 (struct hpt_iop_hba*) ;

__attribute__((used)) static void hptiop_poll(struct cam_sim *sim)
{
 struct hpt_iop_hba *hba;

 hba = cam_sim_softc(sim);
 hba->ops->iop_intr(hba);
}
