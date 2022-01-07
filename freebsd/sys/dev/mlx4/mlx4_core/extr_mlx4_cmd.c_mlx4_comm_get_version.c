
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CMD_CHAN_IF_REV ;
 scalar_t__ CMD_CHAN_VER ;

u32 mlx4_comm_get_version(void)
{
  return ((u32) CMD_CHAN_IF_REV << 8) | (u32) CMD_CHAN_VER;
}
