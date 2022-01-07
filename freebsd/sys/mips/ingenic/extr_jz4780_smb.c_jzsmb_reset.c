
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct jzsmb_softc {int dummy; } ;
typedef int device_t ;


 int SMB_LOCK (struct jzsmb_softc*) ;
 int SMB_UNLOCK (struct jzsmb_softc*) ;
 struct jzsmb_softc* device_get_softc (int ) ;
 int jzsmb_reset_locked (int ,int ) ;

__attribute__((used)) static int
jzsmb_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct jzsmb_softc *sc;
 int error;

 sc = device_get_softc(dev);

 SMB_LOCK(sc);
 error = jzsmb_reset_locked(dev, addr);
 SMB_UNLOCK(sc);

 return (error);
}
