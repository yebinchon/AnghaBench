
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int dummy; } ;


 int DELAY (int) ;
 int WPI_CLRBITS (struct wpi_softc*,int ,int ) ;
 int WPI_GP_CNTRL ;
 int WPI_GP_CNTRL_INIT_DONE ;
 int WPI_RESET ;
 int WPI_RESET_SW ;
 int WPI_SETBITS (struct wpi_softc*,int ,int ) ;
 int wpi_apm_stop_master (struct wpi_softc*) ;

__attribute__((used)) static void
wpi_apm_stop(struct wpi_softc *sc)
{
 wpi_apm_stop_master(sc);


 WPI_SETBITS(sc, WPI_RESET, WPI_RESET_SW);
 DELAY(10);

 WPI_CLRBITS(sc, WPI_GP_CNTRL, WPI_GP_CNTRL_INIT_DONE);
}
