
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int output_mask; int device_id; } ;


 int DPRINTF (char*) ;
 int SCREAMER_CODEC_ADDR1 ;
 int SCREAMER_MUTE_HEADPHONES ;
 int SCREAMER_MUTE_SPEAKER ;
 int SCREAMER_PROG_OUTPUT0 ;
 int SCREAMER_PROG_OUTPUT1 ;
 int screamer_write_locked (struct davbus_softc*,int ,int) ;

__attribute__((used)) static void
screamer_set_outputs(struct davbus_softc *d, u_int mask)
{
 u_int x;

 if (mask == d->output_mask) {
  return;
 }

 x = SCREAMER_MUTE_SPEAKER | SCREAMER_MUTE_HEADPHONES;

 DPRINTF(("Enabled outputs: "));

 if (mask & (1 << 0)) {
  DPRINTF(("SPEAKER "));
  x &= ~SCREAMER_MUTE_SPEAKER;
 }
 if (mask & (1 << 1)) {
  DPRINTF(("HEADPHONES "));
  x &= ~SCREAMER_MUTE_HEADPHONES;
 }

 DPRINTF(("\n"));

 if (d->device_id == 5 || d->device_id == 11) {
  DPRINTF(("Enabling programmable output.\n"));
  x |= SCREAMER_PROG_OUTPUT0;
 }
 if (d->device_id == 8 || d->device_id == 11) {
  x &= ~SCREAMER_MUTE_SPEAKER;

  if (mask & (1 << 0))
   x |= SCREAMER_PROG_OUTPUT1;
 }

 screamer_write_locked(d, SCREAMER_CODEC_ADDR1, x);
 d->output_mask = mask;
}
