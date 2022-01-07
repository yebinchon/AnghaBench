
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct cs {scalar_t__ begin; scalar_t__ end; } ;
struct ahd_softc {scalar_t__ num_critical_sections; scalar_t__ unpause; int saved_dst_mode; int saved_src_mode; struct cs* critical_sections; } ;
typedef int ahd_mode_state ;


 int AHD_FATAL_ERROR (struct ahd_softc*) ;
 int AHD_MAX_STEPS ;
 int AHD_MODE_CFG ;
 int AHD_MODE_SCSI ;
 int AHD_SHOW_MISC ;
 scalar_t__ CLRBUSFREE ;
 int CLRINT ;
 scalar_t__ CLRSCSIINT ;
 int CLRSINT1 ;
 int CURADDR ;
 scalar_t__ ENBUSFREE ;
 int FALSE ;
 int HCNTRL ;
 int LQIMODE0 ;
 int LQIMODE1 ;
 int LQOMODE0 ;
 int LQOMODE1 ;
 int SEQCTL0 ;
 int SIMODE0 ;
 int SIMODE1 ;
 int SIMODE3 ;
 scalar_t__ STEP ;
 int TRUE ;
 int ahd_debug ;
 int ahd_dump_card_state (struct ahd_softc*) ;
 scalar_t__ ahd_inb (struct ahd_softc*,int ) ;
 scalar_t__ ahd_inw (struct ahd_softc*,int ) ;
 int ahd_is_paused (struct ahd_softc*) ;
 char* ahd_name (struct ahd_softc*) ;
 int ahd_outb (struct ahd_softc*,int ,scalar_t__) ;
 int ahd_restore_modes (struct ahd_softc*,int ) ;
 int ahd_save_modes (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,int ,int ) ;
 int ahd_update_modes (struct ahd_softc*) ;
 int aic_delay (int) ;
 int panic (char*) ;
 int printf (char*,char*,scalar_t__,...) ;

void
ahd_clear_critical_section(struct ahd_softc *ahd)
{
 ahd_mode_state saved_modes;
 int stepping;
 int steps;
 int first_instr;
 u_int simode0;
 u_int simode1;
 u_int simode3;
 u_int lqimode0;
 u_int lqimode1;
 u_int lqomode0;
 u_int lqomode1;

 if (ahd->num_critical_sections == 0)
  return;

 stepping = FALSE;
 steps = 0;
 first_instr = 0;
 simode0 = 0;
 simode1 = 0;
 simode3 = 0;
 lqimode0 = 0;
 lqimode1 = 0;
 lqomode0 = 0;
 lqomode1 = 0;
 saved_modes = ahd_save_modes(ahd);
 for (;;) {
  struct cs *cs;
  u_int seqaddr;
  u_int i;

  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  seqaddr = ahd_inw(ahd, CURADDR);

  cs = ahd->critical_sections;
  for (i = 0; i < ahd->num_critical_sections; i++, cs++) {

   if (cs->begin < seqaddr && cs->end >= seqaddr)
    break;
  }

  if (i == ahd->num_critical_sections)
   break;

  if (steps > AHD_MAX_STEPS) {
   printf("%s: Infinite loop in critical section\n"
          "%s: First Instruction 0x%x now 0x%x\n",
          ahd_name(ahd), ahd_name(ahd), first_instr,
          seqaddr);
   AHD_FATAL_ERROR(ahd);
   ahd_dump_card_state(ahd);
   panic("critical section loop");
  }

  steps++;





  if (stepping == FALSE) {

   first_instr = seqaddr;
     ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
     simode0 = ahd_inb(ahd, SIMODE0);
   simode3 = ahd_inb(ahd, SIMODE3);
   lqimode0 = ahd_inb(ahd, LQIMODE0);
   lqimode1 = ahd_inb(ahd, LQIMODE1);
   lqomode0 = ahd_inb(ahd, LQOMODE0);
   lqomode1 = ahd_inb(ahd, LQOMODE1);
   ahd_outb(ahd, SIMODE0, 0);
   ahd_outb(ahd, SIMODE3, 0);
   ahd_outb(ahd, LQIMODE0, 0);
   ahd_outb(ahd, LQIMODE1, 0);
   ahd_outb(ahd, LQOMODE0, 0);
   ahd_outb(ahd, LQOMODE1, 0);
   ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
   simode1 = ahd_inb(ahd, SIMODE1);






   ahd_outb(ahd, SIMODE1, simode1 & ENBUSFREE);
   ahd_outb(ahd, SEQCTL0, ahd_inb(ahd, SEQCTL0) | STEP);
   stepping = TRUE;
  }
  ahd_outb(ahd, CLRSINT1, CLRBUSFREE);
  ahd_outb(ahd, CLRINT, CLRSCSIINT);
  ahd_set_modes(ahd, ahd->saved_src_mode, ahd->saved_dst_mode);
  ahd_outb(ahd, HCNTRL, ahd->unpause);
  while (!ahd_is_paused(ahd))
   aic_delay(200);
  ahd_update_modes(ahd);
 }
 if (stepping) {
  ahd_set_modes(ahd, AHD_MODE_CFG, AHD_MODE_CFG);
  ahd_outb(ahd, SIMODE0, simode0);
  ahd_outb(ahd, SIMODE3, simode3);
  ahd_outb(ahd, LQIMODE0, lqimode0);
  ahd_outb(ahd, LQIMODE1, lqimode1);
  ahd_outb(ahd, LQOMODE0, lqomode0);
  ahd_outb(ahd, LQOMODE1, lqomode1);
  ahd_set_modes(ahd, AHD_MODE_SCSI, AHD_MODE_SCSI);
  ahd_outb(ahd, SEQCTL0, ahd_inb(ahd, SEQCTL0) & ~STEP);
    ahd_outb(ahd, SIMODE1, simode1);






  ahd_outb(ahd, CLRINT, CLRSCSIINT);
 }
 ahd_restore_modes(ahd, saved_modes);
}
