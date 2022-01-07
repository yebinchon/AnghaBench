
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct ieee80211com {scalar_t__ ic_curmode; } ;
struct wpi_softc {int sc_dev; struct ieee80211com sc_ic; } ;
struct wpi_mrr_setup {void* which; TYPE_1__* rates; } ;
struct TYPE_2__ {size_t next; void* ntries; void* plcp; scalar_t__ flags; } ;


 scalar_t__ IEEE80211_MODE_11A ;
 int WPI_CMD_MRR_SETUP ;
 int WPI_MRR_CTL ;
 int WPI_MRR_DATA ;
 void* WPI_NTRIES_DEFAULT ;
 size_t WPI_RIDX_CCK1 ;
 size_t WPI_RIDX_CCK11 ;
 size_t WPI_RIDX_CCK2 ;
 size_t WPI_RIDX_OFDM54 ;
 size_t WPI_RIDX_OFDM6 ;
 int device_printf (int ,char*) ;
 void* htole32 (int ) ;
 int wpi_cmd (struct wpi_softc*,int ,struct wpi_mrr_setup*,int,int ) ;
 void** wpi_ridx_to_plcp ;

__attribute__((used)) static int
wpi_mrr_setup(struct wpi_softc *sc)
{
 struct ieee80211com *ic = &sc->sc_ic;
 struct wpi_mrr_setup mrr;
 uint8_t i;
 int error;


 for (i = WPI_RIDX_CCK1; i <= WPI_RIDX_CCK11; i++) {
  mrr.rates[i].flags = 0;
  mrr.rates[i].plcp = wpi_ridx_to_plcp[i];

  mrr.rates[i].next =
      (i == WPI_RIDX_CCK1) ? WPI_RIDX_CCK1 : i - 1;

  mrr.rates[i].ntries = WPI_NTRIES_DEFAULT;
 }

 for (i = WPI_RIDX_OFDM6; i <= WPI_RIDX_OFDM54; i++) {
  mrr.rates[i].flags = 0;
  mrr.rates[i].plcp = wpi_ridx_to_plcp[i];


  mrr.rates[i].next = (i == WPI_RIDX_OFDM6) ?
      ((ic->ic_curmode == IEEE80211_MODE_11A) ?
   WPI_RIDX_OFDM6 : WPI_RIDX_CCK2) :
      i - 1;

  mrr.rates[i].ntries = WPI_NTRIES_DEFAULT;
 }

 mrr.which = htole32(WPI_MRR_CTL);
 error = wpi_cmd(sc, WPI_CMD_MRR_SETUP, &mrr, sizeof mrr, 0);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not setup MRR for control frames\n");
  return error;
 }

 mrr.which = htole32(WPI_MRR_DATA);
 error = wpi_cmd(sc, WPI_CMD_MRR_SETUP, &mrr, sizeof mrr, 0);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not setup MRR for data frames\n");
  return error;
 }
 return 0;
}
