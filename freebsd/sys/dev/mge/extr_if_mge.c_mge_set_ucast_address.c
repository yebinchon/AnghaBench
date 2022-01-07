
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mge_softc {int dummy; } ;


 int MGE_DA_FILTER_UCAST (int) ;
 int MGE_UCAST_REG_NUMBER ;
 int MGE_WRITE (struct mge_softc*,int ,int) ;

__attribute__((used)) static void
mge_set_ucast_address(struct mge_softc *sc, uint8_t last_byte, uint8_t queue)
{
 uint32_t reg_idx, reg_off, reg_val, i;

 last_byte &= 0xf;
 reg_idx = last_byte / MGE_UCAST_REG_NUMBER;
 reg_off = (last_byte % MGE_UCAST_REG_NUMBER) * 8;
 reg_val = (1 | (queue << 1)) << reg_off;

 for (i = 0; i < MGE_UCAST_REG_NUMBER; i++) {
  if ( i == reg_idx)
   MGE_WRITE(sc, MGE_DA_FILTER_UCAST(i), reg_val);
  else
   MGE_WRITE(sc, MGE_DA_FILTER_UCAST(i), 0);
 }
}
