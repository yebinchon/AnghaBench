
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rss_config {int chip; void* tp_rssconf_cng; void* tp_rssconf_vrt; void* tp_rssconf_syn; void* tp_rssconf_ofd; void* tp_rssconf_tnl; void* tp_rssconf; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct TYPE_2__ {int chipid; } ;
struct adapter {TYPE_1__ params; } ;


 int A_TP_RSS_CONFIG ;
 int A_TP_RSS_CONFIG_CNG ;
 int A_TP_RSS_CONFIG_OFD ;
 int A_TP_RSS_CONFIG_SYN ;
 int A_TP_RSS_CONFIG_TNL ;
 int A_TP_RSS_CONFIG_VRT ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 void* t4_read_reg (struct adapter*,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_rss_config(struct cudbg_init *pdbg_init,
         struct cudbg_buffer *dbg_buff,
         struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct rss_config *rss_conf;
 int rc;
 u32 size;

 size = sizeof(struct rss_config);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 rss_conf = (struct rss_config *)scratch_buff.data;

 rss_conf->tp_rssconf = t4_read_reg(padap, A_TP_RSS_CONFIG);
 rss_conf->tp_rssconf_tnl = t4_read_reg(padap, A_TP_RSS_CONFIG_TNL);
 rss_conf->tp_rssconf_ofd = t4_read_reg(padap, A_TP_RSS_CONFIG_OFD);
 rss_conf->tp_rssconf_syn = t4_read_reg(padap, A_TP_RSS_CONFIG_SYN);
 rss_conf->tp_rssconf_vrt = t4_read_reg(padap, A_TP_RSS_CONFIG_VRT);
 rss_conf->tp_rssconf_cng = t4_read_reg(padap, A_TP_RSS_CONFIG_CNG);
 rss_conf->chip = padap->params.chipid;

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);

err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
