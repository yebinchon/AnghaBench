
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mii_bitbang_ops_t ;
typedef int device_t ;


 int MDIRPHY ;
 int MII_COMMAND_ACK ;
 int MII_COMMAND_START ;
 int MII_COMMAND_WRITE ;
 int MWRITE (int ) ;
 int mii_bitbang_sendbits (int ,int ,int,int) ;
 int mii_bitbang_sync (int ,int ) ;

void
mii_bitbang_writereg(device_t dev, mii_bitbang_ops_t ops, int phy, int reg,
    int val)
{

 mii_bitbang_sync(dev, ops);

 mii_bitbang_sendbits(dev, ops, MII_COMMAND_START, 2);
 mii_bitbang_sendbits(dev, ops, MII_COMMAND_WRITE, 2);
 mii_bitbang_sendbits(dev, ops, phy, 5);
 mii_bitbang_sendbits(dev, ops, reg, 5);
 mii_bitbang_sendbits(dev, ops, MII_COMMAND_ACK, 2);
 mii_bitbang_sendbits(dev, ops, val, 16);

 MWRITE(MDIRPHY);
}
