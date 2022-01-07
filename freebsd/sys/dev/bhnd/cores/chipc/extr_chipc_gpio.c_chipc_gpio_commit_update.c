
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_gpio_update {int ctrl; int outen; int out; int timeroutmask; int pullup; int pulldown; } ;
struct chipc_gpio_softc {int dummy; } ;


 int CC_GPIO_LOCK_ASSERT (struct chipc_gpio_softc*,int ) ;
 int CHIPC_GPIOCTRL ;
 int CHIPC_GPIOOUT ;
 int CHIPC_GPIOOUTEN ;
 int CHIPC_GPIOPD ;
 int CHIPC_GPIOPU ;
 int CHIPC_GPIOTIMEROUTMASK ;
 int MA_OWNED ;
 int chipc_gpio_commit_reg (struct chipc_gpio_softc*,int ,int *) ;

__attribute__((used)) static int
chipc_gpio_commit_update(struct chipc_gpio_softc *sc,
    struct chipc_gpio_update *update)
{
 CC_GPIO_LOCK_ASSERT(sc, MA_OWNED);


 chipc_gpio_commit_reg(sc, CHIPC_GPIOPD, &update->pulldown);
 chipc_gpio_commit_reg(sc, CHIPC_GPIOPU, &update->pullup);


 chipc_gpio_commit_reg(sc, CHIPC_GPIOTIMEROUTMASK,
     &update->timeroutmask);
 chipc_gpio_commit_reg(sc, CHIPC_GPIOOUT, &update->out);


 chipc_gpio_commit_reg(sc, CHIPC_GPIOOUTEN, &update->outen);
 chipc_gpio_commit_reg(sc, CHIPC_GPIOCTRL, &update->ctrl);

 return (0);
}
