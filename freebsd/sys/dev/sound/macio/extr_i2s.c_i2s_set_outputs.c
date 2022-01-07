
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct i2s_softc {int output_mask; int port_mtx; } ;


 int DPRINTF (char*) ;
 int i2s_mute_headphone (struct i2s_softc*,int) ;
 int i2s_mute_lineout (struct i2s_softc*,int) ;
 int i2s_mute_speaker (struct i2s_softc*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
i2s_set_outputs(void *ptr, u_int mask)
{
 struct i2s_softc *sc = ptr;

 if (mask == sc->output_mask)
  return;

 mtx_lock(&sc->port_mtx);

 i2s_mute_speaker(sc, 1);
 i2s_mute_headphone(sc, 1);
 i2s_mute_lineout(sc, 1);

 DPRINTF(("enabled outputs: "));

 if (mask & (1 << 0)) {
  DPRINTF(("SPEAKER "));
  i2s_mute_speaker(sc, 0);
 }
 if (mask & (1 << 1)) {
  DPRINTF(("HEADPHONE "));
  i2s_mute_headphone(sc, 0);
 }
 if (mask & (1 << 2)) {
  DPRINTF(("LINEOUT "));
  i2s_mute_lineout(sc, 0);
 }

 DPRINTF(("\n"));
 sc->output_mask = mask;

 mtx_unlock(&sc->port_mtx);
}
