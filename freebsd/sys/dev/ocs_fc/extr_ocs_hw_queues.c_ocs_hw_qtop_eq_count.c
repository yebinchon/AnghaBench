
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* qtop; } ;
typedef TYPE_2__ ocs_hw_t ;
struct TYPE_4__ {int * entry_counts; } ;


 size_t QTOP_EQ ;

uint32_t
ocs_hw_qtop_eq_count(ocs_hw_t *hw)
{
 return hw->qtop->entry_counts[QTOP_EQ];
}
