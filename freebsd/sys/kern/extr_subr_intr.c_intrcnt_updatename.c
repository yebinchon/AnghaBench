
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_irqsrc {int isrc_index; TYPE_1__* isrc_event; } ;
struct TYPE_2__ {int ie_fullname; } ;


 int MA_OWNED ;
 int intrcnt_setname (int ,int ) ;
 int isrc_table_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
intrcnt_updatename(struct intr_irqsrc *isrc)
{


 mtx_assert(&isrc_table_lock, MA_OWNED);
 intrcnt_setname(isrc->isrc_event->ie_fullname, isrc->isrc_index);
}
