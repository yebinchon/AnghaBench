
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef enum ixgbe_media_type { ____Placeholder_ixgbe_media_type } ixgbe_media_type ;


 int UNREFERENCED_1PARAMETER (struct ixgbe_hw*) ;
 int ixgbe_media_type_copper ;

enum ixgbe_media_type ixgbe_get_media_type_X540(struct ixgbe_hw *hw)
{
 UNREFERENCED_1PARAMETER(hw);
 return ixgbe_media_type_copper;
}
