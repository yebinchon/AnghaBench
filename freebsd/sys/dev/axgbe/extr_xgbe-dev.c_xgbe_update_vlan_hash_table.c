
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xgbe_prv_data {int dummy; } ;


 int MAC_VLANHTR ;
 int VLHT ;
 int XGMAC_IOWRITE_BITS (struct xgbe_prv_data*,int ,int ,int ) ;

__attribute__((used)) static int xgbe_update_vlan_hash_table(struct xgbe_prv_data *pdata)
{
 u16 vlan_hash_table = 0;


 XGMAC_IOWRITE_BITS(pdata, MAC_VLANHTR, VLHT, vlan_hash_table);

 return 0;
}
