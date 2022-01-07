
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int num_elem; int elem_size; } ;
struct TYPE_8__ {int num_elem; int elem_size; } ;
struct TYPE_10__ {TYPE_3__ admin_ib_queue; TYPE_2__ admin_ob_queue; TYPE_1__* pqi_reg; } ;
typedef TYPE_4__ pqisrc_softstate_t ;
struct TYPE_7__ {int pqi_dev_adminq_cap; } ;


 int DBG_FUNC (char*,int) ;
 int LE_64 (int ) ;
 int PCI_MEM_GET64 (TYPE_4__*,int *,int ) ;
 int PQI_ADMINQ_CAP ;

void pqisrc_get_admin_queue_config(pqisrc_softstate_t *softs)
{
 uint64_t val = 0;


 val = LE_64(PCI_MEM_GET64(softs, &softs->pqi_reg->pqi_dev_adminq_cap, PQI_ADMINQ_CAP));


 softs->admin_ib_queue.num_elem = val & 0xFF;
 softs->admin_ob_queue.num_elem = (val & 0xFF00) >> 8;

 softs->admin_ib_queue.elem_size = ((val & 0xFF0000) >> 16) * 16;
 softs->admin_ob_queue.elem_size = ((val & 0xFF000000) >> 24) * 16;

 DBG_FUNC(" softs->admin_ib_queue.num_elem : %d\n",
   softs->admin_ib_queue.num_elem);
 DBG_FUNC(" softs->admin_ib_queue.elem_size : %d\n",
   softs->admin_ib_queue.elem_size);
}
