
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_config_info {int rx_buf_maxsize; int num_rx_descs; int num_rx_rings; int num_tx_descs; int num_tx_rings; } ;
struct netmap_bwrap_adapter {struct netmap_adapter* hwna; } ;
struct netmap_adapter {int rx_buf_maxsize; int num_tx_desc; int num_tx_rings; int num_rx_desc; int num_rx_rings; int na_lut; int nm_mem; } ;


 int netmap_mem_get_lut (int ,int *) ;
 int netmap_update_config (struct netmap_adapter*) ;

__attribute__((used)) static int
netmap_bwrap_config(struct netmap_adapter *na, struct nm_config_info *info)
{
 struct netmap_bwrap_adapter *bna =
  (struct netmap_bwrap_adapter *)na;
 struct netmap_adapter *hwna = bna->hwna;
 int error;




 error = netmap_mem_get_lut(hwna->nm_mem, &hwna->na_lut);
 if (error)
  return error;
 netmap_update_config(hwna);

 info->num_tx_rings = hwna->num_rx_rings;
 info->num_tx_descs = hwna->num_rx_desc;
 info->num_rx_rings = hwna->num_tx_rings;
 info->num_rx_descs = hwna->num_tx_desc;
 info->rx_buf_maxsize = hwna->rx_buf_maxsize;

 return 0;
}
