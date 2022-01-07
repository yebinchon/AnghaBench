
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tpm_sc {int dev_lock; int (* transmit ) (struct tpm_sc*,int) ;int * buf; } ;
typedef int save_cmd ;
typedef int device_t ;


 struct tpm_sc* device_get_softc (int ) ;
 int memcpy (int *,int*,int) ;
 int stub1 (struct tpm_sc*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
tpm20_save_state(device_t dev, bool suspend)
{
 struct tpm_sc *sc;
 uint8_t save_cmd[] = {
  0x80, 0x01,
  0x00, 0x00, 0x00, 0x0C,
  0x00, 0x00, 0x01, 0x45,
  0x00, 0x00
 };

 sc = device_get_softc(dev);




 if (suspend)
  save_cmd[11] = 1;

 if (sc == ((void*)0) || sc->buf == ((void*)0))
  return (0);

 sx_xlock(&sc->dev_lock);

 memcpy(sc->buf, save_cmd, sizeof(save_cmd));
 sc->transmit(sc, sizeof(save_cmd));

 sx_xunlock(&sc->dev_lock);

 return (0);
}
