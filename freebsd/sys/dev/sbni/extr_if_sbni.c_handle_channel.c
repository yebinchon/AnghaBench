
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sbni_softc {int state; scalar_t__ tx_frameno; int ifp; int timer_ticks; } ;


 int CHANGE_LEVEL_START_TICKS ;
 int CSR0 ;
 int EN_INT ;
 int FL_PREV_OK ;
 int RC_RDY ;
 int TR_RDY ;
 int TR_REQ ;
 int if_printf (int ,char*) ;
 int recv_frame (struct sbni_softc*) ;
 int sbni_inb (struct sbni_softc*,int ) ;
 int sbni_outb (struct sbni_softc*,int ,int) ;
 int send_frame (struct sbni_softc*) ;

__attribute__((used)) static void
handle_channel(struct sbni_softc *sc)
{
 int req_ans;
 u_char csr0;

 sbni_outb(sc, CSR0, (sbni_inb(sc, CSR0) & ~EN_INT) | TR_REQ);

 sc->timer_ticks = CHANGE_LEVEL_START_TICKS;
 for (;;) {
  csr0 = sbni_inb(sc, CSR0);
  if ((csr0 & (RC_RDY | TR_RDY)) == 0)
   break;

  req_ans = !(sc->state & FL_PREV_OK);

  if (csr0 & RC_RDY)
   req_ans = recv_frame(sc);





  csr0 = sbni_inb(sc, CSR0);
  if ((csr0 & TR_RDY) == 0 || (csr0 & RC_RDY) != 0)
   if_printf(sc->ifp, "internal error!\n");


  if (req_ans || sc->tx_frameno != 0)
   send_frame(sc);
  else {

   sbni_outb(sc, CSR0, sbni_inb(sc, CSR0) & ~TR_REQ);
  }
 }

 sbni_outb(sc, CSR0, sbni_inb(sc, CSR0) | EN_INT);
}
