
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int last_slave; int slave_valid; int call_lock; } ;
typedef TYPE_1__ ig4iic_softc_t ;
typedef int device_t ;


 int IIC_UNKNOWN ;
 TYPE_1__* device_get_softc (int ) ;
 int set_slave_addr (TYPE_1__*,int) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;
 scalar_t__ sx_xlocked (int *) ;

int
ig4iic_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 ig4iic_softc_t *sc = device_get_softc(dev);
 bool allocated;

 allocated = sx_xlocked(&sc->call_lock) != 0;
 if (!allocated)
  sx_xlock(&sc->call_lock);


 if (oldaddr != ((void*)0))
  *oldaddr = sc->last_slave << 1;
 set_slave_addr(sc, addr >> 1);
 if (addr == IIC_UNKNOWN)
  sc->slave_valid = 0;

 if (!allocated)
  sx_unlock(&sc->call_lock);
 return (0);
}
