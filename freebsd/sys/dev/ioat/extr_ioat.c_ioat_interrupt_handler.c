
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int interrupts; } ;
struct ioat_softc {TYPE_1__ stats; } ;


 int TRUE ;
 int ioat_process_events (struct ioat_softc*,int ) ;

__attribute__((used)) static void
ioat_interrupt_handler(void *arg)
{
 struct ioat_softc *ioat = arg;

 ioat->stats.interrupts++;
 ioat_process_events(ioat, TRUE);
}
