
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct my_softc {TYPE_1__* my_info; } ;
struct TYPE_2__ {scalar_t__ my_did; } ;


 int CSR_READ_2 (struct my_softc*,scalar_t__) ;
 long CSR_READ_4 (struct my_softc*,int ) ;
 int CSR_WRITE_4 (struct my_softc*,int ,long) ;
 int DELAY (int) ;
 scalar_t__ MTD803ID ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_MANAGEMENT ;
 long MY_MASK_MIIR_MII_MDC ;
 long MY_MASK_MIIR_MII_MDI ;
 int MY_OP_READ ;
 scalar_t__ MY_PHYBASE ;
 long my_send_cmd_to_phy (struct my_softc*,int ,int) ;

__attribute__((used)) static u_int16_t
my_phy_readreg(struct my_softc * sc, int reg)
{
 long miir;
 int mask, data;

 MY_LOCK_ASSERT(sc);

 if (sc->my_info->my_did == MTD803ID)
  data = CSR_READ_2(sc, MY_PHYBASE + reg * 2);
 else {
  miir = my_send_cmd_to_phy(sc, MY_OP_READ, reg);


  mask = 0x8000;
  data = 0;
  while (mask) {

   miir &= ~MY_MASK_MIIR_MII_MDC;
   CSR_WRITE_4(sc, MY_MANAGEMENT, miir);


   miir = CSR_READ_4(sc, MY_MANAGEMENT);
   if (miir & MY_MASK_MIIR_MII_MDI)
    data |= mask;


   miir |= MY_MASK_MIIR_MII_MDC;
   CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
   DELAY(30);


   mask >>= 1;
  }


  miir &= ~MY_MASK_MIIR_MII_MDC;
  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
 }

 return (u_int16_t) data;
}
