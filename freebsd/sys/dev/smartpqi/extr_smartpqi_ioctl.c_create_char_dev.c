
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* cdev; } ;
struct pqisrc_softstate {TYPE_1__ os_specific; } ;
struct TYPE_4__ {struct pqisrc_softstate* si_drv1; } ;


 int DBG_FUNC (char*,int) ;
 int GID_OPERATOR ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int UID_ROOT ;
 TYPE_2__* make_dev (int *,int,int ,int ,int,char*,int) ;
 int smartpqi_cdevsw ;

int create_char_dev(struct pqisrc_softstate *softs, int card_index)
{
 int error = PQI_STATUS_SUCCESS;

 DBG_FUNC("IN idx = %d\n", card_index);

 softs->os_specific.cdev = make_dev(&smartpqi_cdevsw, card_index,
    UID_ROOT, GID_OPERATOR, 0640,
    "smartpqi%u", card_index);
 if(softs->os_specific.cdev) {
  softs->os_specific.cdev->si_drv1 = softs;
 } else {
  error = PQI_STATUS_FAILURE;
 }

 DBG_FUNC("OUT error = %d\n", error);
 return error;
}
