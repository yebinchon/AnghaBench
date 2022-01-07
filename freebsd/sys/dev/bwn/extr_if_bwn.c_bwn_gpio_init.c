
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int board_flags; } ;
struct bwn_softc {TYPE_1__ sc_board_info; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;


 int BHND_BFL_PACTRL ;
 int BHND_GPIO_BOARD_PACTRL ;
 int BWN_GPIO_MASK ;
 int BWN_MACCTL ;
 int BWN_MACCTL_GPOUT_MASK ;
 int BWN_READ_2 (struct bwn_mac*,int ) ;
 int BWN_READ_4 (struct bwn_mac*,int ) ;
 int BWN_WRITE_2 (struct bwn_mac*,int ,int) ;
 int BWN_WRITE_4 (struct bwn_mac*,int ,int) ;
 int bwn_gpio_control (struct bwn_mac*,int) ;

__attribute__((used)) static int
bwn_gpio_init(struct bwn_mac *mac)
{
 struct bwn_softc *sc;
 uint32_t pins;

 sc = mac->mac_sc;

 pins = 0xF;

 BWN_WRITE_4(mac, BWN_MACCTL,
     BWN_READ_4(mac, BWN_MACCTL) & ~BWN_MACCTL_GPOUT_MASK);
 BWN_WRITE_2(mac, BWN_GPIO_MASK,
     BWN_READ_2(mac, BWN_GPIO_MASK) | pins);

 if (sc->sc_board_info.board_flags & BHND_BFL_PACTRL) {

  BWN_WRITE_2(mac, BWN_GPIO_MASK,
      BWN_READ_2(mac, BWN_GPIO_MASK) | BHND_GPIO_BOARD_PACTRL);

  pins |= BHND_GPIO_BOARD_PACTRL;
 }

 return (bwn_gpio_control(mac, pins));
}
