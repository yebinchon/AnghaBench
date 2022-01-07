
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf_rss_info {int* key; int cfg; int rss_size; int* ind_tbl; scalar_t__ hash_bits; int enable; } ;
struct nicvf {scalar_t__ cpi_alg; int rx_queues; struct nicvf_rss_info rss_info; } ;


 scalar_t__ CPI_ALG_NONE ;
 int ENXIO ;
 int FALSE ;
 int NIC_VNIC_RSS_CFG ;
 int RSS_IP_HASH_ENA ;
 int RSS_TCP_HASH_ENA ;
 int RSS_UDP_HASH_ENA ;
 int TRUE ;
 scalar_t__ fls (int) ;
 int nicvf_config_rss (struct nicvf*) ;
 int nicvf_get_rss_size (struct nicvf*) ;
 int nicvf_reg_write (struct nicvf*,int ,int) ;
 int nicvf_set_rss_key (struct nicvf*) ;

__attribute__((used)) static int
nicvf_rss_init(struct nicvf *nic)
{
 struct nicvf_rss_info *rss;
 int idx;

 nicvf_get_rss_size(nic);

 rss = &nic->rss_info;
 if (nic->cpi_alg != CPI_ALG_NONE) {
  rss->enable = FALSE;
  rss->hash_bits = 0;
  return (ENXIO);
 }

 rss->enable = TRUE;


 rss->key[0] = 0xFEED0BADFEED0BADUL;
 rss->key[1] = 0xFEED0BADFEED0BADUL;
 rss->key[2] = 0xFEED0BADFEED0BADUL;
 rss->key[3] = 0xFEED0BADFEED0BADUL;
 rss->key[4] = 0xFEED0BADFEED0BADUL;

 nicvf_set_rss_key(nic);

 rss->cfg = RSS_IP_HASH_ENA | RSS_TCP_HASH_ENA | RSS_UDP_HASH_ENA;
 nicvf_reg_write(nic, NIC_VNIC_RSS_CFG, rss->cfg);

 rss->hash_bits = fls(rss->rss_size) - 1;
 for (idx = 0; idx < rss->rss_size; idx++)
  rss->ind_tbl[idx] = idx % nic->rx_queues;

 nicvf_config_rss(nic);

 return (0);
}
