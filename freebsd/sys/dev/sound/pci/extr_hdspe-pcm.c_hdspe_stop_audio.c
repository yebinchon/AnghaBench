
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int ctrl_register; } ;


 int HDSPE_AUDIO_INT_ENABLE ;
 int HDSPE_CONTROL_REG ;
 int HDSPE_ENABLE ;
 int hdspe_running (struct sc_info*) ;
 int hdspe_write_4 (struct sc_info*,int ,int) ;

__attribute__((used)) static void
hdspe_stop_audio(struct sc_info *sc)
{

 if (hdspe_running(sc) == 1)
  return;

 sc->ctrl_register &= ~(HDSPE_AUDIO_INT_ENABLE | HDSPE_ENABLE);
 hdspe_write_4(sc, HDSPE_CONTROL_REG, sc->ctrl_register);
}
