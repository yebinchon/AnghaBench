
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahc_softc {int dummy; } ;


 int ENSELO ;
 int SCBPTR ;
 int SCB_CONTROL ;
 int SCB_LIST_NULL ;
 int SCB_NEXT ;
 int SCSISEQ ;
 int WAITING_SCBH ;
 int ahc_add_curscb_to_free_list (struct ahc_softc*) ;
 int ahc_inb (struct ahc_softc*,int ) ;
 int ahc_outb (struct ahc_softc*,int ,int) ;

__attribute__((used)) static u_int
ahc_rem_wscb(struct ahc_softc *ahc, u_int scbpos, u_int prev)
{
 u_int curscb, next;





 curscb = ahc_inb(ahc, SCBPTR);
 ahc_outb(ahc, SCBPTR, scbpos);
 next = ahc_inb(ahc, SCB_NEXT);


 ahc_outb(ahc, SCB_CONTROL, 0);

 ahc_add_curscb_to_free_list(ahc);


 if (prev == SCB_LIST_NULL) {

  ahc_outb(ahc, WAITING_SCBH, next);





  ahc_outb(ahc, SCSISEQ, (ahc_inb(ahc, SCSISEQ) & ~ENSELO));
 } else {




  ahc_outb(ahc, SCBPTR, prev);
  ahc_outb(ahc, SCB_NEXT, next);
 }




 ahc_outb(ahc, SCBPTR, curscb);
 return next;
}
