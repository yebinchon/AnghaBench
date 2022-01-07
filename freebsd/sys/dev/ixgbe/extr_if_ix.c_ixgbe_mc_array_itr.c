
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ixgbe_mc_addr {int * addr; int vmdq; } ;
struct ixgbe_hw {int dummy; } ;



__attribute__((used)) static u8 *
ixgbe_mc_array_itr(struct ixgbe_hw *hw, u8 **update_ptr, u32 *vmdq)
{
 struct ixgbe_mc_addr *mta;

 mta = (struct ixgbe_mc_addr *)*update_ptr;
 *vmdq = mta->vmdq;

 *update_ptr = (u8*)(mta + 1);

 return (mta->addr);
}
