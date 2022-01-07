
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lapic {int la_timer_mode; } ;
struct eventtimer {int dummy; } ;


 int LAT_MODE_UNDEF ;
 size_t PCPU_GET (int ) ;
 int apic_id ;
 int lapic_timer_stop (struct lapic*) ;
 struct lapic* lapics ;

__attribute__((used)) static int
lapic_et_stop(struct eventtimer *et)
{
 struct lapic *la;

 la = &lapics[PCPU_GET(apic_id)];
 lapic_timer_stop(la);
 la->la_timer_mode = LAT_MODE_UNDEF;
 return (0);
}
