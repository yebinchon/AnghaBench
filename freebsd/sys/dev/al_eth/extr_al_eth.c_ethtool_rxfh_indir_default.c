
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static inline uint32_t
ethtool_rxfh_indir_default(uint32_t index, uint32_t n_rx_rings)
{

 return (index % n_rx_rings);
}
