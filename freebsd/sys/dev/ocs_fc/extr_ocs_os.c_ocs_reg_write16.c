
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int uint16_t ;
struct TYPE_4__ {TYPE_2__* reg; } ;
typedef TYPE_1__ ocs_t ;
struct TYPE_5__ {int bhandle; int btag; } ;
typedef TYPE_2__ ocs_pci_reg_t ;


 void bus_space_write_2 (int ,int ,size_t,int ) ;

void
ocs_reg_write16(ocs_t *ocs, uint32_t rset, uint32_t off, uint16_t val)
{
 ocs_pci_reg_t *reg = ((void*)0);

 reg = &ocs->reg[rset];

 return bus_space_write_2(reg->btag, reg->bhandle, off, val);
}
