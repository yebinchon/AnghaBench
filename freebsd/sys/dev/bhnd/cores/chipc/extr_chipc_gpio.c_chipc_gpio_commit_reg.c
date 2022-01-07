
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct chipc_gpio_softc {int mem_res; } ;
struct chipc_gpio_reg {int value; int mask; } ;
typedef int bus_size_t ;


 int CC_GPIO_LOCK_ASSERT (struct chipc_gpio_softc*,int ) ;
 int MA_OWNED ;
 int bhnd_bus_read_4 (int ,int ) ;
 int bhnd_bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
chipc_gpio_commit_reg(struct chipc_gpio_softc *sc, bus_size_t offset,
    struct chipc_gpio_reg *reg)
{
 uint32_t value;

 CC_GPIO_LOCK_ASSERT(sc, MA_OWNED);

 if (reg->mask == 0)
  return;

 value = bhnd_bus_read_4(sc->mem_res, offset);
 value &= ~reg->mask;
 value |= reg->value;

 bhnd_bus_write_4(sc->mem_res, offset, value);
}
