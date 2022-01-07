
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct viawd_softc {int dummy; } ;


 int VIAWD_MEM_CTRL ;
 int VIAWD_MEM_CTRL_ENABLE ;
 int VIAWD_MEM_CTRL_TRIGGER ;
 int viawd_read_4 (struct viawd_softc*,int ) ;
 int viawd_write_4 (struct viawd_softc*,int ,int) ;

__attribute__((used)) static void
viawd_tmr_state(struct viawd_softc *sc, int enable)
{
 uint32_t reg;

 reg = viawd_read_4(sc, VIAWD_MEM_CTRL);
 if (enable)
  reg |= VIAWD_MEM_CTRL_TRIGGER | VIAWD_MEM_CTRL_ENABLE;
 else
  reg &= ~VIAWD_MEM_CTRL_ENABLE;
 viawd_write_4(sc, VIAWD_MEM_CTRL, reg);
}
