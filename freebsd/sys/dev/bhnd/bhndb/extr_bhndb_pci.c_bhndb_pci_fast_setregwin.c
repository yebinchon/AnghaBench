
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cfg_offset; } ;
struct TYPE_4__ {TYPE_1__ dyn; } ;
struct bhndb_regwin {int win_type; scalar_t__ win_size; TYPE_2__ d; } ;
typedef int device_t ;
typedef scalar_t__ bhnd_addr_t ;



 int EINVAL ;
 int ENODEV ;
 int ERANGE ;
 scalar_t__ UINT32_MAX ;
 int pci_write_config (int ,int ,scalar_t__,int) ;

__attribute__((used)) static int
bhndb_pci_fast_setregwin(device_t dev, device_t pci_dev,
    const struct bhndb_regwin *rw, bhnd_addr_t addr)
{


 if (addr > UINT32_MAX)
  return (ERANGE);

 switch (rw->win_type) {
 case 128:

  if (addr % rw->win_size != 0)
   return (EINVAL);

  pci_write_config(pci_dev, rw->d.dyn.cfg_offset, addr, 4);
  break;
 default:
  return (ENODEV);
 }

 return (0);
}
