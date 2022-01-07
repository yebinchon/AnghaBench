
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct my_softc {TYPE_1__* my_info; } ;
struct TYPE_2__ {scalar_t__ my_did; } ;


 int CSR_WRITE_2 (struct my_softc*,scalar_t__,int) ;
 int CSR_WRITE_4 (struct my_softc*,int ,long) ;
 int DELAY (int) ;
 scalar_t__ MTD803ID ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_MANAGEMENT ;
 long MY_MASK_MIIR_MII_MDC ;
 long MY_MASK_MIIR_MII_MDO ;
 int MY_OP_WRITE ;
 scalar_t__ MY_PHYBASE ;
 long my_send_cmd_to_phy (struct my_softc*,int ,int) ;

__attribute__((used)) static void
my_phy_writereg(struct my_softc * sc, int reg, int data)
{
 long miir;
 int mask;

 MY_LOCK_ASSERT(sc);

 if (sc->my_info->my_did == MTD803ID)
  CSR_WRITE_2(sc, MY_PHYBASE + reg * 2, data);
 else {
  miir = my_send_cmd_to_phy(sc, MY_OP_WRITE, reg);


  mask = 0x8000;
  while (mask) {

   miir &= ~(MY_MASK_MIIR_MII_MDC + MY_MASK_MIIR_MII_MDO);
   if (mask & data)
    miir |= MY_MASK_MIIR_MII_MDO;
   CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
   DELAY(1);


   miir |= MY_MASK_MIIR_MII_MDC;
   CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
   DELAY(1);


   mask >>= 1;
  }


  miir &= ~MY_MASK_MIIR_MII_MDC;
  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
 }
 return;
}
