
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static __inline__ int
nlm_ucore_get_rxpkt_channel(unsigned int pktrdy)
{
 return ((pktrdy >> 5) & 0xff);
}
