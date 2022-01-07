
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct cs {scalar_t__ begin; scalar_t__ end; } ;
struct ahc_softc {scalar_t__ num_critical_sections; int features; scalar_t__ seqctl; scalar_t__ unpause; struct cs* critical_sections; } ;


 int AHC_DT ;
 int AHC_MAX_STEPS ;
 scalar_t__ CLRBUSFREE ;
 int CLRINT ;
 scalar_t__ CLRSCSIINT ;
 int CLRSINT1 ;
 scalar_t__ ENBUSFREE ;
 int FALSE ;
 int HCNTRL ;
 int SEQADDR0 ;
 int SEQADDR1 ;
 int SEQCTL ;
 int SIMODE0 ;
 int SIMODE1 ;
 scalar_t__ STEP ;
 int TRUE ;
 int ahc_dump_card_state (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_is_paused (struct ahc_softc*) ;
 char* ahc_name (struct ahc_softc*) ;
 int ahc_outb (struct ahc_softc*,int ,scalar_t__) ;
 int aic_delay (int) ;
 int panic (char*) ;
 int printf (char*,char*) ;

void
ahc_clear_critical_section(struct ahc_softc *ahc)
{
 int stepping;
 int steps;
 u_int simode0;
 u_int simode1;

 if (ahc->num_critical_sections == 0)
  return;

 stepping = FALSE;
 steps = 0;
 simode0 = 0;
 simode1 = 0;
 for (;;) {
  struct cs *cs;
  u_int seqaddr;
  u_int i;

  seqaddr = ahc_inb(ahc, SEQADDR0)
   | (ahc_inb(ahc, SEQADDR1) << 8);






  cs = ahc->critical_sections;
  for (i = 0; i < ahc->num_critical_sections; i++, cs++) {

   if (cs->begin < seqaddr && cs->end >= seqaddr)
    break;
  }

  if (i == ahc->num_critical_sections)
   break;

  if (steps > AHC_MAX_STEPS) {
   printf("%s: Infinite loop in critical section\n",
          ahc_name(ahc));
   ahc_dump_card_state(ahc);
   panic("critical section loop");
  }

  steps++;
  if (stepping == FALSE) {







   simode0 = ahc_inb(ahc, SIMODE0);
   ahc_outb(ahc, SIMODE0, 0);
   simode1 = ahc_inb(ahc, SIMODE1);
   if ((ahc->features & AHC_DT) != 0)
    ahc_outb(ahc, SIMODE1, simode1 & ENBUSFREE);
   else
    ahc_outb(ahc, SIMODE1, 0);
   ahc_outb(ahc, CLRINT, CLRSCSIINT);
   ahc_outb(ahc, SEQCTL, ahc->seqctl | STEP);
   stepping = TRUE;
  }
  if ((ahc->features & AHC_DT) != 0) {
   ahc_outb(ahc, CLRSINT1, CLRBUSFREE);
   ahc_outb(ahc, CLRINT, CLRSCSIINT);
  }
  ahc_outb(ahc, HCNTRL, ahc->unpause);
  while (!ahc_is_paused(ahc))
   aic_delay(200);
 }
 if (stepping) {
  ahc_outb(ahc, SIMODE0, simode0);
  ahc_outb(ahc, SIMODE1, simode1);
  ahc_outb(ahc, SEQCTL, ahc->seqctl);
 }
}
