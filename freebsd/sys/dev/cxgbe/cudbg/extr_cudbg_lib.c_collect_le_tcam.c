
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_tid_data {int dummy; } ;
struct cudbg_tcam {int tid_hash_base; int routing_start; int clip_start; int filter_start; int server_start; int max_tid; int member_0; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct adapter {int dummy; } ;


 int A_LE_DB_CLIP_TABLE_INDEX ;
 int A_LE_DB_CONFIG ;
 int A_LE_DB_FILTER_TABLE_INDEX ;
 int A_LE_DB_HASH_CONFIG ;
 int A_LE_DB_ROUTING_TABLE_INDEX ;
 int A_LE_DB_SERVER_INDEX ;
 int A_LE_DB_TID_HASHBASE ;
 scalar_t__ CHELSIO_T5 ;
 int CUDBG_CHUNK_SIZE ;
 int CUDBG_MAX_TCAM_TID ;
 int G_HASHTIDSIZE (int) ;
 int S_HASHEN ;
 scalar_t__ chip_id (struct adapter*) ;
 int compress_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int cudbg_read_tid (struct cudbg_init*,int,struct cudbg_tid_data*) ;
 int get_scratch_buff (struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int memcpy (scalar_t__,struct cudbg_tcam*,int) ;
 int release_scratch_buff (struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int write_compression_hdr (struct cudbg_buffer*,struct cudbg_buffer*) ;

__attribute__((used)) static int collect_le_tcam(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct cudbg_buffer scratch_buff;
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_tcam tcam_region = {0};
 struct cudbg_tid_data *tid_data = ((void*)0);
 u32 value, bytes = 0, bytes_left = 0;
 u32 i;
 int rc, size;


 value = t4_read_reg(padap, A_LE_DB_TID_HASHBASE);

 tcam_region.tid_hash_base = value;


 value = t4_read_reg(padap, A_LE_DB_ROUTING_TABLE_INDEX);
 tcam_region.routing_start = value;


 value = t4_read_reg(padap, A_LE_DB_CLIP_TABLE_INDEX);
 tcam_region.clip_start = value;


 value = t4_read_reg(padap, A_LE_DB_FILTER_TABLE_INDEX);
 tcam_region.filter_start = value;


 value = t4_read_reg(padap, A_LE_DB_SERVER_INDEX);
 tcam_region.server_start = value;


 value = t4_read_reg(padap, A_LE_DB_CONFIG);
 if ((value >> S_HASHEN) & 1) {
  value = t4_read_reg(padap, A_LE_DB_HASH_CONFIG);
  if (chip_id(padap) > CHELSIO_T5)
   tcam_region.max_tid = (value & 0xFFFFF) +
           tcam_region.tid_hash_base;
  else {
   value = G_HASHTIDSIZE(value);
   value = 1 << value;
   tcam_region.max_tid = value +
    tcam_region.tid_hash_base;
  }
 } else
  tcam_region.max_tid = CUDBG_MAX_TCAM_TID;

 size = sizeof(struct cudbg_tid_data) * tcam_region.max_tid;
 size += sizeof(struct cudbg_tcam);
 scratch_buff.size = size;

 rc = write_compression_hdr(&scratch_buff, dbg_buff);
 if (rc)
  goto err;

 rc = get_scratch_buff(dbg_buff, CUDBG_CHUNK_SIZE, &scratch_buff);
 if (rc)
  goto err;

 memcpy(scratch_buff.data, &tcam_region, sizeof(struct cudbg_tcam));

 tid_data = (struct cudbg_tid_data *)(((struct cudbg_tcam *)
          scratch_buff.data) + 1);
 bytes_left = CUDBG_CHUNK_SIZE - sizeof(struct cudbg_tcam);
 bytes = sizeof(struct cudbg_tcam);


 for (i = 0; i < tcam_region.max_tid; i++) {
  if (bytes_left < sizeof(struct cudbg_tid_data)) {
   scratch_buff.size = bytes;
   rc = compress_buff(&scratch_buff, dbg_buff);
   if (rc)
    goto err1;
   scratch_buff.size = CUDBG_CHUNK_SIZE;
   release_scratch_buff(&scratch_buff, dbg_buff);


   rc = get_scratch_buff(dbg_buff, CUDBG_CHUNK_SIZE,
           &scratch_buff);
   if (rc)
    goto err;

   tid_data = (struct cudbg_tid_data *)(scratch_buff.data);
   bytes_left = CUDBG_CHUNK_SIZE;
   bytes = 0;
  }

  rc = cudbg_read_tid(pdbg_init, i, tid_data);

  if (rc) {
   cudbg_err->sys_err = rc;
   goto err1;
  }

  tid_data++;
  bytes_left -= sizeof(struct cudbg_tid_data);
  bytes += sizeof(struct cudbg_tid_data);
 }

 if (bytes) {
  scratch_buff.size = bytes;
  rc = compress_buff(&scratch_buff, dbg_buff);
 }

err1:
 scratch_buff.size = CUDBG_CHUNK_SIZE;
 release_scratch_buff(&scratch_buff, dbg_buff);
err:
 return rc;
}
