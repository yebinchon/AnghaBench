
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahc_softc {int dummy; } ;


 int DISCONNECTED_SCBH ;
 int SCBPTR ;
 int SCB_CONTROL ;
 scalar_t__ SCB_LIST_NULL ;
 int SCB_NEXT ;
 int ahc_add_curscb_to_free_list (struct ahc_softc*) ;
 scalar_t__ ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,scalar_t__) ;

__attribute__((used)) static u_int
ahc_rem_scb_from_disc_list(struct ahc_softc *ahc, u_int prev, u_int scbptr)
{
 u_int next;

 ahc_outb(ahc, SCBPTR, scbptr);
 next = ahc_inb(ahc, SCB_NEXT);

 ahc_outb(ahc, SCB_CONTROL, 0);

 ahc_add_curscb_to_free_list(ahc);

 if (prev != SCB_LIST_NULL) {
  ahc_outb(ahc, SCBPTR, prev);
  ahc_outb(ahc, SCB_NEXT, next);
 } else
  ahc_outb(ahc, DISCONNECTED_SCBH, next);

 return (next);
}
