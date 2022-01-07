
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct emu_sc_info {TYPE_1__* cdev; int dev; int emu10kx_lock; } ;
struct TYPE_2__ {struct emu_sc_info* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int PCMMINOR (int) ;
 int UID_ROOT ;
 int device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int emu10kx_cdevsw ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int) ;
 int mtx_init (int *,int ,char*,int ) ;

__attribute__((used)) static int
emu10kx_dev_init(struct emu_sc_info *sc)
{
 int unit;

 mtx_init(&sc->emu10kx_lock, device_get_nameunit(sc->dev), "kxdevlock", 0);
 unit = device_get_unit(sc->dev);

 sc->cdev = make_dev(&emu10kx_cdevsw, PCMMINOR(unit), UID_ROOT, GID_WHEEL, 0640, "emu10kx%d", unit);
 if (sc->cdev != ((void*)0)) {
  sc->cdev->si_drv1 = sc;
  return (0);
 }
 return (ENXIO);
}
