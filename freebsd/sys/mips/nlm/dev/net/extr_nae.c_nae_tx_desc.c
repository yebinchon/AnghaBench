
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int ;



uint64_t
nae_tx_desc(u_int type, u_int rdex, u_int fbid, u_int len, uint64_t addr)
{
 return ((uint64_t)type << 62) |
  ((uint64_t)rdex << 61) |
  ((uint64_t)fbid << 54) |
  ((uint64_t)len << 40) | addr;
}
