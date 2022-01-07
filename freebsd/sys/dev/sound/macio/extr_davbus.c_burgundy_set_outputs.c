
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int output_mask; } ;


 int BURGUNDY_MUTE_REG ;
 int BURGUNDY_P14L_EN ;
 int BURGUNDY_P14R_EN ;
 int BURGUNDY_P17M_EN ;
 int DPRINTF (char*) ;
 int burgundy_write_locked (struct davbus_softc*,int ,int) ;

__attribute__((used)) static void
burgundy_set_outputs(struct davbus_softc *d, u_int mask)
{
 u_int x = 0;

 if (mask == d->output_mask)
  return;
 DPRINTF(("Enabled outputs:"));
 if (mask & (1 << 0)) {
  DPRINTF((" SPEAKER"));
  x |= BURGUNDY_P17M_EN;
 }
 if (mask & (1 << 1)) {
  DPRINTF((" HEADPHONES"));
  x |= BURGUNDY_P14L_EN | BURGUNDY_P14R_EN;
 }
 DPRINTF(("\n"));

 burgundy_write_locked(d, BURGUNDY_MUTE_REG, x);
 d->output_mask = mask;
}
