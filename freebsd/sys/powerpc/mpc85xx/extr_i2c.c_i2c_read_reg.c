
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct i2c_softc {int bsh; int bst; } ;
typedef int bus_size_t ;


 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static __inline uint8_t
i2c_read_reg(struct i2c_softc *sc, bus_size_t off)
{

 return (bus_space_read_1(sc->bst, sc->bsh, off));
}
