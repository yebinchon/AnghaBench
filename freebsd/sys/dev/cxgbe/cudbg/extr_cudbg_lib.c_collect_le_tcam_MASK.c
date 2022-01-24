#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct cudbg_tid_data {int dummy; } ;
struct cudbg_tcam {int tid_hash_base; int routing_start; int clip_start; int filter_start; int server_start; int max_tid; int /*<<< orphan*/  member_0; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {int size; scalar_t__ data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_LE_DB_CLIP_TABLE_INDEX ; 
 int /*<<< orphan*/  A_LE_DB_CONFIG ; 
 int /*<<< orphan*/  A_LE_DB_FILTER_TABLE_INDEX ; 
 int /*<<< orphan*/  A_LE_DB_HASH_CONFIG ; 
 int /*<<< orphan*/  A_LE_DB_ROUTING_TABLE_INDEX ; 
 int /*<<< orphan*/  A_LE_DB_SERVER_INDEX ; 
 int /*<<< orphan*/  A_LE_DB_TID_HASHBASE ; 
 scalar_t__ CHELSIO_T5 ; 
 int CUDBG_CHUNK_SIZE ; 
 int CUDBG_MAX_TCAM_TID ; 
 int FUNC0 (int) ; 
 int S_HASHEN ; 
 scalar_t__ FUNC1 (struct adapter*) ; 
 int FUNC2 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC3 (struct cudbg_init*,int,struct cudbg_tid_data*) ; 
 int FUNC4 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct cudbg_tcam*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct cudbg_buffer*,struct cudbg_buffer*) ; 

__attribute__((used)) static int FUNC9(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct cudbg_buffer scratch_buff;
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_tcam tcam_region = {0};
	struct cudbg_tid_data *tid_data = NULL;
	u32 value, bytes = 0, bytes_left  = 0;
	u32 i;
	int rc, size;

	/* Get the LE regions */
	value = FUNC7(padap, A_LE_DB_TID_HASHBASE); /* Get hash base
							     index */
	tcam_region.tid_hash_base = value;

	/* Get routing table index */
	value = FUNC7(padap, A_LE_DB_ROUTING_TABLE_INDEX);
	tcam_region.routing_start = value;

	/*Get clip table index */
	value = FUNC7(padap, A_LE_DB_CLIP_TABLE_INDEX);
	tcam_region.clip_start = value;

	/* Get filter table index */
	value = FUNC7(padap, A_LE_DB_FILTER_TABLE_INDEX);
	tcam_region.filter_start = value;

	/* Get server table index */
	value = FUNC7(padap, A_LE_DB_SERVER_INDEX);
	tcam_region.server_start = value;

	/* Check whether hash is enabled and calculate the max tids */
	value = FUNC7(padap, A_LE_DB_CONFIG);
	if ((value >> S_HASHEN) & 1) {
		value = FUNC7(padap, A_LE_DB_HASH_CONFIG);
		if (FUNC1(padap) > CHELSIO_T5)
			tcam_region.max_tid = (value & 0xFFFFF) +
					      tcam_region.tid_hash_base;
		else {	    /* for T5 */
			value = FUNC0(value);
			value = 1 << value;
			tcam_region.max_tid = value +
				tcam_region.tid_hash_base;
		}
	} else	 /* hash not enabled */
		tcam_region.max_tid = CUDBG_MAX_TCAM_TID;

	size = sizeof(struct cudbg_tid_data) * tcam_region.max_tid;
	size += sizeof(struct cudbg_tcam);
	scratch_buff.size = size;

	rc = FUNC8(&scratch_buff, dbg_buff);
	if (rc)
		goto err;

	rc = FUNC4(dbg_buff, CUDBG_CHUNK_SIZE, &scratch_buff);
	if (rc)
		goto err;

	FUNC5(scratch_buff.data, &tcam_region, sizeof(struct cudbg_tcam));

	tid_data = (struct cudbg_tid_data *)(((struct cudbg_tcam *)
					     scratch_buff.data) + 1);
	bytes_left = CUDBG_CHUNK_SIZE - sizeof(struct cudbg_tcam);
	bytes = sizeof(struct cudbg_tcam);

	/* read all tid */
	for (i = 0; i < tcam_region.max_tid; i++) {
		if (bytes_left < sizeof(struct cudbg_tid_data)) {
			scratch_buff.size = bytes;
			rc = FUNC2(&scratch_buff, dbg_buff);
			if (rc)
				goto err1;
			scratch_buff.size = CUDBG_CHUNK_SIZE;
			FUNC6(&scratch_buff, dbg_buff);

			/* new alloc */
			rc = FUNC4(dbg_buff, CUDBG_CHUNK_SIZE,
					      &scratch_buff);
			if (rc)
				goto err;

			tid_data = (struct cudbg_tid_data *)(scratch_buff.data);
			bytes_left = CUDBG_CHUNK_SIZE;
			bytes = 0;
		}

		rc = FUNC3(pdbg_init, i, tid_data);

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
		rc = FUNC2(&scratch_buff, dbg_buff);
	}

err1:
	scratch_buff.size = CUDBG_CHUNK_SIZE;
	FUNC6(&scratch_buff, dbg_buff);
err:
	return rc;
}