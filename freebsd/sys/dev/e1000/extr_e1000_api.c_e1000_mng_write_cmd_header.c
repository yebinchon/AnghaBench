
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_host_mng_command_header {int dummy; } ;
typedef int s32 ;


 int e1000_mng_write_cmd_header_generic (struct e1000_hw*,struct e1000_host_mng_command_header*) ;

s32 e1000_mng_write_cmd_header(struct e1000_hw *hw,
          struct e1000_host_mng_command_header *hdr)
{
 return e1000_mng_write_cmd_header_generic(hw, hdr);
}
