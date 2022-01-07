
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;


 int EIO ;
 int FALSE ;
 int KBD_AUX_CONTROL_BITS ;
 int KBD_KBD_CONTROL_BITS ;
 int empty_aux_buffer (int ,int ) ;
 int kbdc_get_device_mask (int ) ;
 int kbdc_lock (int ,int ) ;
 int set_controller_command_byte (int ,int ,int) ;

__attribute__((used)) static int
unblock_mouse_data(struct psm_softc *sc, int c)
{
 int error = 0;





 empty_aux_buffer(sc->kbdc, 0);


 if (!set_controller_command_byte(sc->kbdc,
     kbdc_get_device_mask(sc->kbdc),
     c & (KBD_KBD_CONTROL_BITS | KBD_AUX_CONTROL_BITS))) {





  error = EIO;
 }

 kbdc_lock(sc->kbdc, FALSE);
 return (error);
}
