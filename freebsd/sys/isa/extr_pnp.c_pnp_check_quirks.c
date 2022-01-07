
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct pnp_quirk {scalar_t__ vendor_id; scalar_t__ logical_id; int type; int arg1; int arg2; } ;
struct isa_config {int ic_nport; TYPE_1__* ic_port; } ;
struct TYPE_2__ {int ir_start; int ir_end; } ;




 int PNP_SET_LDN ;
 struct pnp_quirk* pnp_quirks ;
 int pnp_write (int,int) ;

void
pnp_check_quirks(uint32_t vendor_id, uint32_t logical_id, int ldn,
    struct isa_config *config)
{
 struct pnp_quirk *qp;

 for (qp = &pnp_quirks[0]; qp->vendor_id; qp++) {
  if (qp->vendor_id == vendor_id
      && (qp->logical_id == 0 || qp->logical_id == logical_id)) {
   switch (qp->type) {
   case 128:
    pnp_write(PNP_SET_LDN, ldn);
    pnp_write(qp->arg1, qp->arg2);
    break;
   case 129:
    if (config == ((void*)0))
     break;
    if (qp->arg1 != 0) {
     config->ic_nport++;
     config->ic_port[config->ic_nport - 1] = config->ic_port[0];
     config->ic_port[config->ic_nport - 1].ir_start += qp->arg1;
     config->ic_port[config->ic_nport - 1].ir_end += qp->arg1;
    }
    if (qp->arg2 != 0) {
     config->ic_nport++;
     config->ic_port[config->ic_nport - 1] = config->ic_port[0];
     config->ic_port[config->ic_nport - 1].ir_start += qp->arg2;
     config->ic_port[config->ic_nport - 1].ir_end += qp->arg2;
    }
    break;
   }
  }
 }
}
