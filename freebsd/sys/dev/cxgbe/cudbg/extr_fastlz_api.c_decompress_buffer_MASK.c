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
typedef  scalar_t__ u32 ;
struct cudbg_buffer {int size; scalar_t__ offset; scalar_t__ data; } ;

/* Variables and functions */
 int CUDBG_BLOCK_SIZE ; 
 int CUDBG_MIN_COMPR_LEN ; 
 int CUDBG_STATUS_CHKSUM_MISSMATCH ; 
 int CUDBG_STATUS_DECOMPRESS_FAIL ; 
 int CUDBG_STATUS_SMALL_BUFF ; 
 unsigned long FUNC0 (unsigned char*,unsigned long,unsigned char*,unsigned long) ; 
 int FUNC1 (struct cudbg_buffer*,unsigned long,struct cudbg_buffer*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 int FUNC3 (struct cudbg_buffer*,int*,int*,unsigned long*,unsigned long*,unsigned long*) ; 
 unsigned long FUNC4 (scalar_t__,scalar_t__,scalar_t__*,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 unsigned long FUNC6 (long,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__*,unsigned char*,unsigned long) ; 

int FUNC8(struct cudbg_buffer *pc_buff,
		      struct cudbg_buffer *pd_buff)
{
	struct cudbg_buffer tmp_compressed_buffer;
	struct cudbg_buffer tmp_decompressed_buffer;
	unsigned char *compressed_buffer;
	unsigned char *decompressed_buffer;
	unsigned char buffer[CUDBG_MIN_COMPR_LEN];
	unsigned long chunk_size;
	unsigned long chunk_checksum;
	unsigned long chunk_extra;
	unsigned long checksum;
	unsigned long total_extracted = 0;
	unsigned long r;
	unsigned long remaining;
	unsigned long bytes_read;
	u32 decompressed_size = 0;
	int chunk_id, chunk_options, rc;

	if (pd_buff->size < 2 * CUDBG_BLOCK_SIZE)
		return CUDBG_STATUS_SMALL_BUFF;

	rc = FUNC1(pd_buff, CUDBG_BLOCK_SIZE,
			      &tmp_compressed_buffer);

	if (rc)
		goto err_cbuff;

	rc = FUNC1(pd_buff, CUDBG_BLOCK_SIZE,
			      &tmp_decompressed_buffer);
	if (rc)
		goto err_dcbuff;

	compressed_buffer = (unsigned char *)tmp_compressed_buffer.data;
	decompressed_buffer = (unsigned char *)tmp_decompressed_buffer.data;

	/* main loop */

	for (;;) {
		if (pc_buff->offset > pc_buff->size)
			break;

		rc =  FUNC3(pc_buff, &chunk_id, &chunk_options,
					&chunk_size, &chunk_checksum,
					&chunk_extra);
		if (rc != 0)
			break;

		/* skip 8+16 */
		if ((chunk_id == 1) && (chunk_size > 10) &&
		    (chunk_size < CUDBG_BLOCK_SIZE)) {

			bytes_read = FUNC4(pc_buff->data, pc_buff->size,
						   &pc_buff->offset, buffer,
						   chunk_size);

			if (bytes_read == 0)
				return 0;

			checksum = FUNC6(1L, buffer, chunk_size);
			if (checksum != chunk_checksum)
				return CUDBG_STATUS_CHKSUM_MISSMATCH;

			decompressed_size = (u32)FUNC2(buffer);

			if (pd_buff->size < decompressed_size) {

				pd_buff->size = 2 * CUDBG_BLOCK_SIZE +
						decompressed_size;
				pc_buff->offset -= chunk_size + 16;
				return CUDBG_STATUS_SMALL_BUFF;
			}
			total_extracted = 0;

		}

		if (chunk_size > CUDBG_BLOCK_SIZE) {
			/* Release old allocated memory */
			FUNC5(&tmp_decompressed_buffer, pd_buff);
			FUNC5(&tmp_compressed_buffer, pd_buff);

			/* allocate new memory with chunk_size size */
			rc = FUNC1(pd_buff, chunk_size,
					      &tmp_compressed_buffer);
			if (rc)
				goto err_cbuff;

			rc = FUNC1(pd_buff, chunk_size,
					      &tmp_decompressed_buffer);
			if (rc)
				goto err_dcbuff;

			compressed_buffer = (unsigned char *)tmp_compressed_buffer.data;
			decompressed_buffer = (unsigned char *)tmp_decompressed_buffer.data;
		}

		if ((chunk_id == 17) && decompressed_size) {
			/* uncompressed */
			switch (chunk_options) {
				/* stored, simply copy to output */
			case 0:
				total_extracted += chunk_size;
				remaining = chunk_size;
				checksum = 1L;
				for (;;) {
					/* Write a funtion for this */
					r = (CUDBG_BLOCK_SIZE < remaining) ?
					    CUDBG_BLOCK_SIZE : remaining;
					bytes_read =
					FUNC4(pc_buff->data,
						      pc_buff->size,
						      &pc_buff->offset, buffer,
						      r);

					if (bytes_read == 0)
						return 0;

					FUNC7(pd_buff->data,
						     pd_buff->size,
						     &pd_buff->offset, buffer,
						     bytes_read);
					checksum = FUNC6(checksum,
								  buffer,
								  bytes_read);
					remaining -= bytes_read;

					/* verify everything is written
					 * correctly */
					if (checksum != chunk_checksum)
						return
						CUDBG_STATUS_CHKSUM_MISSMATCH;
				}

				break;

				/* compressed using FastLZ */
			case 1:
				bytes_read = FUNC4(pc_buff->data,
							   pc_buff->size,
							   &pc_buff->offset,
							   compressed_buffer,
							   chunk_size);

				if (bytes_read == 0)
					return 0;

				checksum = FUNC6(1L, compressed_buffer,
							  chunk_size);
				total_extracted += chunk_extra;

				/* verify that the chunk data is correct */
				if (checksum != chunk_checksum) {
					return CUDBG_STATUS_CHKSUM_MISSMATCH;
				} else {
					/* decompress and verify */
					remaining =
					FUNC0(compressed_buffer,
							  chunk_size,
							  decompressed_buffer,
							  chunk_extra);

					if (remaining != chunk_extra) {
						rc =
						CUDBG_STATUS_DECOMPRESS_FAIL;
						goto err;
					} else {
						FUNC7(pd_buff->data,
							     pd_buff->size,
							     &pd_buff->offset,
							     decompressed_buffer,
							     chunk_extra);
					}
				}
				break;

			default:
				break;
			}

		}

	}

err:
	FUNC5(&tmp_decompressed_buffer, pd_buff);
err_dcbuff:
	FUNC5(&tmp_compressed_buffer, pd_buff);

err_cbuff:
	return rc;
}