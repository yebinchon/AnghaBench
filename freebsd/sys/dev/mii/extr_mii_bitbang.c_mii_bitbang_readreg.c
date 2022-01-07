
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mii_bitbang_ops_t ;
typedef int device_t ;


 int MDC ;
 int MDI ;
 int MDIRHOST ;
 int MDIRPHY ;
 int MII_COMMAND_READ ;
 int MII_COMMAND_START ;
 int MREAD ;
 int MWRITE (int) ;
 int mii_bitbang_sendbits (int ,int ,int,int) ;
 int mii_bitbang_sync (int ,int ) ;

int
mii_bitbang_readreg(device_t dev, mii_bitbang_ops_t ops, int phy, int reg)
{
 int i, error, val;

 mii_bitbang_sync(dev, ops);

 mii_bitbang_sendbits(dev, ops, MII_COMMAND_START, 2);
 mii_bitbang_sendbits(dev, ops, MII_COMMAND_READ, 2);
 mii_bitbang_sendbits(dev, ops, phy, 5);
 mii_bitbang_sendbits(dev, ops, reg, 5);


 MWRITE(MDIRHOST);


 MWRITE(MDIRHOST | MDC);
 MWRITE(MDIRHOST);


 error = MREAD & MDI;


 MWRITE(MDIRHOST | MDC);
 MWRITE(MDIRHOST);

 val = 0;
 for (i = 0; i < 16; i++) {
  val <<= 1;

  if (error == 0 && (MREAD & MDI) != 0)
   val |= 1;

  MWRITE(MDIRHOST | MDC);
  MWRITE(MDIRHOST);
 }


 MWRITE(MDIRPHY);

 return (error != 0 ? 0 : val);
}
