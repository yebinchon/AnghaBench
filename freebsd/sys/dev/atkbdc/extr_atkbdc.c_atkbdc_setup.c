
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int register_t ;
typedef int bus_space_tag_t ;
typedef void* bus_space_handle_t ;
struct TYPE_7__ {scalar_t__ max_qcount; scalar_t__ qcount; scalar_t__ call_count; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_6__ {scalar_t__ max_qcount; scalar_t__ qcount; scalar_t__ call_count; scalar_t__ tail; scalar_t__ head; } ;
struct TYPE_8__ {scalar_t__ ioh0; int command_byte; int retry; int quirks; void* ioh1; int iot; TYPE_2__ aux; TYPE_1__ kbd; void* aux_mux_enabled; void* lock; scalar_t__ command_mask; } ;
typedef TYPE_3__ atkbdc_softc_t ;


 int DELAY (int) ;
 void* FALSE ;
 int KBDD_DELAYTIME ;
 int atkbdc_getquirks () ;
 int intr_disable () ;
 int intr_restore (int ) ;
 int rdtsc () ;
 int read_status (TYPE_3__*) ;

__attribute__((used)) static int
atkbdc_setup(atkbdc_softc_t *sc, bus_space_tag_t tag, bus_space_handle_t h0,
      bus_space_handle_t h1)
{

 u_int64_t tscval[3], read_delay;
 register_t flags;


 if (sc->ioh0 == 0) {
     sc->command_byte = -1;
     sc->command_mask = 0;
     sc->lock = FALSE;
     sc->kbd.head = sc->kbd.tail = 0;
     sc->aux.head = sc->aux.tail = 0;
     sc->aux_mux_enabled = FALSE;






 }
 sc->iot = tag;
 sc->ioh0 = h0;
 sc->ioh1 = h1;
 flags = intr_disable();
 tscval[0] = rdtsc();
 read_status(sc);
 tscval[1] = rdtsc();
 DELAY(1000);
 tscval[2] = rdtsc();
 intr_restore(flags);
 read_delay = tscval[1] - tscval[0];
 read_delay /= (tscval[2] - tscval[1]) / 1000;
 sc->retry = 100000 / ((KBDD_DELAYTIME * 2) + read_delay);



 sc->quirks = atkbdc_getquirks();

 return 0;
}
