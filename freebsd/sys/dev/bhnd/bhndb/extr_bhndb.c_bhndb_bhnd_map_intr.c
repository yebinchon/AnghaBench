
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct bhndb_softc {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ bhnd_get_intr_count (int ) ;
 int bhnd_get_intr_ivec (int ,scalar_t__,scalar_t__*) ;
 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhndb_bhnd_map_intr(device_t dev, device_t child, u_int intr, rman_res_t *irq)
{
 struct bhndb_softc *sc;
 u_int ivec;
 int error;

 sc = device_get_softc(dev);


 if (intr >= bhnd_get_intr_count(child))
  return (EINVAL);


 if ((error = bhnd_get_intr_ivec(child, intr, &ivec)))
  return (error);


 *irq = ivec;

 return (0);
}
