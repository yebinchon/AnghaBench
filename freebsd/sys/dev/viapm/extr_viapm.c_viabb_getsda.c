
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct viapm_softc {int dummy; } ;
typedef int device_t ;


 int EXTSMI_VAL ;
 int VIAPM_INB (int ) ;
 int VIAPM_LOCK (struct viapm_softc*) ;
 int VIAPM_SDA ;
 int VIAPM_UNLOCK (struct viapm_softc*) ;
 struct viapm_softc* device_get_softc (int ) ;

__attribute__((used)) static int
viabb_getsda(device_t dev)
{
 struct viapm_softc *viapm = device_get_softc(dev);
 u_char val;

 VIAPM_LOCK(viapm);
 val = VIAPM_INB(EXTSMI_VAL);
 VIAPM_UNLOCK(viapm);
 return ((val & VIAPM_SDA) != 0);
}
