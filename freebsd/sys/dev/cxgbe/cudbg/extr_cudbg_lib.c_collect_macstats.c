
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_4__ {int size; int revision; int signature; } ;
struct struct_mac_stats_rev1 {size_t port_count; int * stats; TYPE_2__ ver_hdr; } ;
struct cudbg_ver_hdr {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; } ;
struct TYPE_3__ {int nports; } ;
struct adapter {TYPE_1__ params; } ;


 int CUDBG_ENTITY_SIGNATURE ;
 int CUDBG_MAC_STATS_REV ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int get_scratch_buff (struct cudbg_buffer*,size_t,struct cudbg_buffer*) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_get_port_stats (struct adapter*,size_t,int *) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_macstats(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer scratch_buff;
 struct struct_mac_stats_rev1 *mac_stats_buff;
 u32 i, n, size;
 int rc = 0;

 rc = padap->params.nports;
 if (rc < 0)
  goto err;

 n = rc;
 size = sizeof(struct struct_mac_stats_rev1);

 rc = get_scratch_buff(dbg_buff, size, &scratch_buff);
 if (rc)
  goto err;

 mac_stats_buff = (struct struct_mac_stats_rev1 *) scratch_buff.data;

 mac_stats_buff->ver_hdr.signature = CUDBG_ENTITY_SIGNATURE;
 mac_stats_buff->ver_hdr.revision = CUDBG_MAC_STATS_REV;
 mac_stats_buff->ver_hdr.size = sizeof(struct struct_mac_stats_rev1) -
           sizeof(struct cudbg_ver_hdr);

 mac_stats_buff->port_count = n;
 for (i = 0; i < mac_stats_buff->port_count; i++)
  t4_get_port_stats(padap, i, &mac_stats_buff->stats[i]);

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err1;

 rc = compress_buff(&scratch_buff, dbg_buff);
err1:
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
