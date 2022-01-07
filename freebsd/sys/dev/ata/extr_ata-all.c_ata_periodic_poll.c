
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_channel {int poll_callout; } ;


 int ata_interrupt (struct ata_channel*) ;
 int callout_reset (int *,int ,void (*) (void*),struct ata_channel*) ;
 int hz ;

__attribute__((used)) static void
ata_periodic_poll(void *data)
{
    struct ata_channel *ch = (struct ata_channel *)data;

    callout_reset(&ch->poll_callout, hz, ata_periodic_poll, ch);
    ata_interrupt(ch);
}
