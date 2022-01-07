
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct psm_softc {int dummy; } ;
struct TYPE_5__ {int* ipacket; } ;
typedef TYPE_1__ packetbuf_t ;
struct TYPE_6__ {int button; int obutton; } ;
typedef TYPE_2__ mousestatus_t ;


 int LOG_DEBUG ;
 int MOUSE_BUTTON4DOWN ;
 int MOUSE_BUTTON5DOWN ;
 int MOUSE_EXTBUTTONS ;
 int MOUSE_PS2PLUS_BUTTON4DOWN ;
 int MOUSE_PS2PLUS_BUTTON5DOWN ;
 scalar_t__ MOUSE_PS2PLUS_CHECKBITS (int*) ;
 int MOUSE_PS2PLUS_PACKET_TYPE (int*) ;
 int MOUSE_PS2PLUS_SYNC ;
 int MOUSE_PS2PLUS_SYNCMASK ;
 int MOUSE_PS2PLUS_ZNEG ;
 int MOUSE_SPOINT_WNEG ;
 int MOUSE_SPOINT_ZNEG ;
 int VLOG (int,int ) ;
 int abs (int) ;

__attribute__((used)) static void
proc_mmanplus(struct psm_softc *sc, packetbuf_t *pb, mousestatus_t *ms,
    int *x, int *y, int *z)
{
 if (((pb->ipacket[0] & MOUSE_PS2PLUS_SYNCMASK) == MOUSE_PS2PLUS_SYNC) &&
     (abs(*x) > 191) && MOUSE_PS2PLUS_CHECKBITS(pb->ipacket)) {




  switch (MOUSE_PS2PLUS_PACKET_TYPE(pb->ipacket)) {
  case 1:

   *x = *y = 0;
   if (pb->ipacket[2] & 0x80) {

    ;
   } else {

    *z = (pb->ipacket[2] & MOUSE_PS2PLUS_ZNEG) ?
        (pb->ipacket[2] & 0x0f) - 16 :
        (pb->ipacket[2] & 0x0f);
   }
   ms->button |= (pb->ipacket[2] &
       MOUSE_PS2PLUS_BUTTON4DOWN) ?
       MOUSE_BUTTON4DOWN : 0;
   ms->button |= (pb->ipacket[2] &
       MOUSE_PS2PLUS_BUTTON5DOWN) ?
       MOUSE_BUTTON5DOWN : 0;
   break;
  case 2:
   *x = *y = 0;

   if (pb->ipacket[2] & 0x0f)
    *z = (pb->ipacket[2] & MOUSE_SPOINT_WNEG) ?
        -2 : 2;

   if (pb->ipacket[2] & 0xf0)
    *z = (pb->ipacket[2] & MOUSE_SPOINT_ZNEG) ?
        -1 : 1;
   break;
  case 0:


  default:
   *x = *y = 0;
   ms->button = ms->obutton;
   VLOG(1, (LOG_DEBUG, "psmintr: unknown PS2++ packet "
       "type %d: 0x%02x 0x%02x 0x%02x\n",
       MOUSE_PS2PLUS_PACKET_TYPE(pb->ipacket),
       pb->ipacket[0], pb->ipacket[1], pb->ipacket[2]));
   break;
  }
 } else {

  ms->button |= ms->obutton & MOUSE_EXTBUTTONS;
 }
}
