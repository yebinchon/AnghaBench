
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ chan; int flags; } ;
struct wpi_softc {struct wpi_power_group* groups; TYPE_1__ rxon; } ;
struct wpi_power_group {scalar_t__ chan; } ;
struct wpi_cmd_txpower {TYPE_2__* rates; int chan; int band; } ;
struct TYPE_4__ {int dsp_gain; int rf_gain; int plcp; } ;


 int DPRINTF (struct wpi_softc*,int ,char*,scalar_t__,int,int) ;
 int WPI_BAND_2GHZ ;
 int WPI_BAND_5GHZ ;
 int WPI_CMD_TXPOWER ;
 int WPI_DEBUG_TEMP ;
 int WPI_RIDX_MAX ;
 int WPI_RXON_24GHZ ;
 int htole16 (scalar_t__) ;
 int htole32 (int ) ;
 int memset (struct wpi_cmd_txpower*,int ,int) ;
 int wpi_cmd (struct wpi_softc*,int ,struct wpi_cmd_txpower*,int,int) ;
 int * wpi_dsp_gain_2ghz ;
 int * wpi_dsp_gain_5ghz ;
 int wpi_get_power_index (struct wpi_softc*,struct wpi_power_group*,scalar_t__,int,int) ;
 int * wpi_rf_gain_2ghz ;
 int * wpi_rf_gain_5ghz ;
 int * wpi_ridx_to_plcp ;

__attribute__((used)) static int
wpi_set_txpower(struct wpi_softc *sc, int async)
{
 struct wpi_power_group *group;
 struct wpi_cmd_txpower cmd;
 uint8_t chan;
 int idx, is_chan_5ghz, i;


 chan = sc->rxon.chan;
 is_chan_5ghz = (sc->rxon.flags & htole32(WPI_RXON_24GHZ)) == 0;


 if (is_chan_5ghz) {
  for (group = &sc->groups[1]; group < &sc->groups[4]; group++)
   if (chan <= group->chan)
    break;
 } else
  group = &sc->groups[0];

 memset(&cmd, 0, sizeof cmd);
 cmd.band = is_chan_5ghz ? WPI_BAND_5GHZ : WPI_BAND_2GHZ;
 cmd.chan = htole16(chan);


 for (i = 0; i <= WPI_RIDX_MAX ; i++) {

  idx = wpi_get_power_index(sc, group, chan, is_chan_5ghz, i);

  cmd.rates[i].plcp = wpi_ridx_to_plcp[i];

  if (is_chan_5ghz) {
   cmd.rates[i].rf_gain = wpi_rf_gain_5ghz[idx];
   cmd.rates[i].dsp_gain = wpi_dsp_gain_5ghz[idx];
  } else {
   cmd.rates[i].rf_gain = wpi_rf_gain_2ghz[idx];
   cmd.rates[i].dsp_gain = wpi_dsp_gain_2ghz[idx];
  }
  DPRINTF(sc, WPI_DEBUG_TEMP,
      "chan %d/ridx %d: power index %d\n", chan, i, idx);
 }

 return wpi_cmd(sc, WPI_CMD_TXPOWER, &cmd, sizeof cmd, async);
}
