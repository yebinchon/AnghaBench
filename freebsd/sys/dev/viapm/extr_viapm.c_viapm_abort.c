
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viapm_softc {int dummy; } ;


 int DELAY (int) ;
 int SMBHCTRL ;
 int SMBHCTRL_KILL ;
 int VIAPM_OUTB (int ,int ) ;

__attribute__((used)) static int
viapm_abort(struct viapm_softc *viapm)
{
 VIAPM_OUTB(SMBHCTRL, SMBHCTRL_KILL);
 DELAY(10);

 return (0);
}
