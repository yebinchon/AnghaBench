
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_softc {int my_phy_addr; } ;


 long CSR_READ_4 (struct my_softc*,int ) ;
 int CSR_WRITE_4 (struct my_softc*,int ,long) ;
 int DELAY (int) ;
 int MY_LOCK_ASSERT (struct my_softc*) ;
 int MY_MANAGEMENT ;
 long MY_MASK_MIIR_MII_MDC ;
 long MY_MASK_MIIR_MII_MDO ;
 long MY_MASK_MIIR_MII_WRITE ;
 int MY_OP_READ ;

__attribute__((used)) static long
my_send_cmd_to_phy(struct my_softc * sc, int opcode, int regad)
{
 long miir;
 int i;
 int mask, data;

 MY_LOCK_ASSERT(sc);


 miir = CSR_READ_4(sc, MY_MANAGEMENT);
 miir &= 0xfffffff0;

 miir |= MY_MASK_MIIR_MII_WRITE + MY_MASK_MIIR_MII_MDO;


 for (i = 0; i < 32; i++) {

  miir &= ~MY_MASK_MIIR_MII_MDC;
  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);


  miir |= MY_MASK_MIIR_MII_MDC;
  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
 }


 data = opcode | (sc->my_phy_addr << 7) | (regad << 2);


 mask = 0x8000;
 while (mask) {

  miir &= ~(MY_MASK_MIIR_MII_MDC + MY_MASK_MIIR_MII_MDO);
  if (mask & data)
   miir |= MY_MASK_MIIR_MII_MDO;

  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);

  miir |= MY_MASK_MIIR_MII_MDC;
  CSR_WRITE_4(sc, MY_MANAGEMENT, miir);
  DELAY(30);


  mask >>= 1;
  if (mask == 0x2 && opcode == MY_OP_READ)
   miir &= ~MY_MASK_MIIR_MII_WRITE;
 }

 return miir;
}
