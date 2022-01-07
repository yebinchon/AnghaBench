
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int state_mtx; } ;


 int ata_interrupt_locked (void*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ata_interrupt(void *data)
{
    struct ata_channel *ch = (struct ata_channel *)data;

    mtx_lock(&ch->state_mtx);
    ata_interrupt_locked(data);
    mtx_unlock(&ch->state_mtx);
}
