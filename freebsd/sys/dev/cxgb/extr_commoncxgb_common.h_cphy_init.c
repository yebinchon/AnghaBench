
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mdio_ops {int write; int read; } ;
struct cphy_ops {int dummy; } ;
struct cphy {unsigned int caps; char const* desc; int mdio_write; int mdio_read; struct cphy_ops* ops; int * pinfo; int * adapter; scalar_t__ addr; } ;
typedef int pinfo_t ;
typedef int adapter_t ;



__attribute__((used)) static inline void cphy_init(struct cphy *phy, adapter_t *adapter, pinfo_t *pinfo,
        int phy_addr, struct cphy_ops *phy_ops,
        const struct mdio_ops *mdio_ops, unsigned int caps,
        const char *desc)
{
 phy->addr = (u8)phy_addr;
 phy->caps = caps;
 phy->adapter = adapter;
 phy->pinfo = pinfo;
 phy->desc = desc;
 phy->ops = phy_ops;
 if (mdio_ops) {
  phy->mdio_read = mdio_ops->read;
  phy->mdio_write = mdio_ops->write;
 }
}
