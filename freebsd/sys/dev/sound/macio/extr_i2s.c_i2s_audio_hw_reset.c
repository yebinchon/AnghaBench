
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2s_softc {int dummy; } ;


 size_t AUDIO_HW_RESET ;
 int DELAY (int ) ;
 int DPRINTF (char*) ;
 int RESET_HOLD_TIME ;
 int RESET_RELEASE_TIME ;
 int RESET_SETUP_TIME ;
 scalar_t__* gpio_ctrls ;
 int gpio_write (size_t,int) ;
 int reset_active ;

__attribute__((used)) static void
i2s_audio_hw_reset(struct i2s_softc *sc)
{
 if (gpio_ctrls[AUDIO_HW_RESET]) {
  DPRINTF(("resetting codec\n"));

  gpio_write(AUDIO_HW_RESET, !reset_active);
  DELAY(RESET_SETUP_TIME);

  gpio_write(AUDIO_HW_RESET, reset_active);
  DELAY(RESET_HOLD_TIME);

  gpio_write(AUDIO_HW_RESET, !reset_active);
  DELAY(RESET_RELEASE_TIME);

 } else {
  DPRINTF(("no audio_hw_reset\n"));
 }
}
