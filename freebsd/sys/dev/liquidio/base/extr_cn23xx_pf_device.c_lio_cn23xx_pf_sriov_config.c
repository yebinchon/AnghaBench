
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ num_pf_rings; scalar_t__ pf_srn; scalar_t__ trs; } ;
struct octeon_device {TYPE_1__ sriov_info; scalar_t__ chip; } ;
struct lio_config {int dummy; } ;
struct lio_cn23xx_pf {struct lio_config* conf; } ;


 int LIO_23XX ;
 scalar_t__ LIO_CN23XX_PF_MAX_RINGS ;
 int lio_dev_dbg (struct octeon_device*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int lio_dev_warn (struct octeon_device*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ lio_get_config_info (struct octeon_device*,int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ mp_ncpus ;
 scalar_t__ rss_getnumbuckets () ;

__attribute__((used)) static int
lio_cn23xx_pf_sriov_config(struct octeon_device *oct)
{
 struct lio_cn23xx_pf *cn23xx = (struct lio_cn23xx_pf *)oct->chip;
 uint32_t num_pf_rings, total_rings, max_rings;
 cn23xx->conf = (struct lio_config *)lio_get_config_info(oct, LIO_23XX);

 max_rings = LIO_CN23XX_PF_MAX_RINGS;

 if (oct->sriov_info.num_pf_rings) {
  num_pf_rings = oct->sriov_info.num_pf_rings;
  if (num_pf_rings > max_rings) {
   num_pf_rings = min(mp_ncpus, max_rings);
   lio_dev_warn(oct, "num_queues_per_pf requested %u is more than available rings (%u). Reducing to %u\n",
         oct->sriov_info.num_pf_rings,
         max_rings, num_pf_rings);
  }
 } else {



  num_pf_rings = min(mp_ncpus, max_rings);


 }

 total_rings = num_pf_rings;
 oct->sriov_info.trs = total_rings;
 oct->sriov_info.pf_srn = total_rings - num_pf_rings;
 oct->sriov_info.num_pf_rings = num_pf_rings;

 lio_dev_dbg(oct, "trs:%d pf_srn:%d num_pf_rings:%d\n",
      oct->sriov_info.trs, oct->sriov_info.pf_srn,
      oct->sriov_info.num_pf_rings);

 return (0);
}
