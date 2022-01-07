
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct viapm_softc {int dummy; } ;
typedef int device_t ;


 int GPIO_VAL ;
 int VIAPM_INB (int ) ;
 int VIAPM_LOCK (struct viapm_softc*) ;
 int VIAPM_OUTB (int ,int ) ;
 int VIAPM_SCL ;
 int VIAPM_UNLOCK (struct viapm_softc*) ;
 struct viapm_softc* device_get_softc (int ) ;

__attribute__((used)) static void
viabb_setscl(device_t dev, int ctrl)
{
 struct viapm_softc *viapm = device_get_softc(dev);
 u_char val;

 VIAPM_LOCK(viapm);
 val = VIAPM_INB(GPIO_VAL);

 if (ctrl)
  val |= VIAPM_SCL;
 else
  val &= ~VIAPM_SCL;

 VIAPM_OUTB(GPIO_VAL, val);
 VIAPM_UNLOCK(viapm);

 return;
}
