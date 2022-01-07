
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hwid; } ;
struct psm_softc {TYPE_1__ hw; int kbdc; } ;
typedef enum probearg { ____Placeholder_probearg } probearg ;
typedef int KBDC ;


 int FALSE ;
 int MOUSE_PS2PLUS_CHECKBITS (int*) ;
 scalar_t__ MOUSE_PS2PLUS_PACKET_TYPE (int*) ;
 int MOUSE_PS2PLUS_SYNC ;
 int MOUSE_PS2PLUS_SYNCMASK ;
 int PROBE ;
 int TRUE ;
 int get_mouse_status (int ,int*,int,int) ;
 int mouse_ext_command (int ,int) ;
 int set_mouse_scaling (int ,int) ;

__attribute__((used)) static int
enable_mmanplus(struct psm_softc *sc, enum probearg arg)
{
 KBDC kbdc = sc->kbdc;
 int data[3];







 if (!set_mouse_scaling(kbdc, 1))
  return (FALSE);
 if (!mouse_ext_command(kbdc, 0x39) || !mouse_ext_command(kbdc, 0xdb))
  return (FALSE);
 if (get_mouse_status(kbdc, data, 1, 3) < 3)
  return (FALSE);
 if ((data[0] & MOUSE_PS2PLUS_SYNCMASK) != MOUSE_PS2PLUS_SYNC)
  return (FALSE);
 if ((data[1] & 0xc3) != 0xc2)
  return (FALSE);

 if (!MOUSE_PS2PLUS_CHECKBITS(data))
  return (FALSE);

 if (MOUSE_PS2PLUS_PACKET_TYPE(data) != 0)
  return (FALSE);

 if (arg == PROBE) {
  sc->hw.hwid &= 0x00ff;
  sc->hw.hwid |= data[2] << 8;
 }







 return (TRUE);
}
