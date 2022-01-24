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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct cudbg_flash_sec_info {int dummy; } ;
struct cudbg_init {int /*<<< orphan*/  (* print ) (char*) ;scalar_t__ verbose; } ;
struct cudbg_private {struct cudbg_flash_sec_info sec_info; struct cudbg_init dbg_init; } ;
struct cudbg_hdr {int dummy; } ;
struct cudbg_flash_hdr {int dummy; } ;
struct cudbg_entity_hdr {int dummy; } ;
struct cudbg_buffer {int dummy; } ;

/* Variables and functions */
 int CUDBG_FLASH_SIZE ; 
 int CUDBG_MAX_ENTITY ; 
 int CUDBG_STATUS_FLASH_FULL ; 
 int FLASH_CUDBG_NSECS ; 
 int FUNC0 (void*,scalar_t__,struct cudbg_buffer*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct cudbg_flash_sec_info*,int) ; 

__attribute__((used)) static int FUNC5(void *handle, struct cudbg_buffer *dbg_buff,
		       u32 cur_entity_data_offset,
		       u32 cur_entity_size,
		       int entity_nu, u32 ext_size)
{
	struct cudbg_private *priv = handle;
	struct cudbg_init *cudbg_init = &priv->dbg_init;
	struct cudbg_flash_sec_info *sec_info = &priv->sec_info;
	u64 timestamp;
	u32 cur_entity_hdr_offset = sizeof(struct cudbg_hdr);
	u32 remain_flash_size;
	u32 flash_data_offset;
	u32 data_hdr_size;
	int rc = -1;

	data_hdr_size = CUDBG_MAX_ENTITY * sizeof(struct cudbg_entity_hdr) +
			sizeof(struct cudbg_hdr);

	flash_data_offset = (FLASH_CUDBG_NSECS *
			     (sizeof(struct cudbg_flash_hdr) +
			      data_hdr_size)) +
			    (cur_entity_data_offset - data_hdr_size);

	if (flash_data_offset > CUDBG_FLASH_SIZE) {
		FUNC4(sec_info, cur_entity_size);
		if (cudbg_init->verbose)
			cudbg_init->print("Large entity skipping...\n");
		return rc;
	}

	remain_flash_size = CUDBG_FLASH_SIZE - flash_data_offset;

	if (cur_entity_size > remain_flash_size) {
		FUNC4(sec_info, cur_entity_size);
		if (cudbg_init->verbose)
			cudbg_init->print("Large entity skipping...\n");
	} else {
		timestamp = 0;

		cur_entity_hdr_offset +=
			(sizeof(struct cudbg_entity_hdr) *
			(entity_nu - 1));

		rc = FUNC0(handle, timestamp, dbg_buff,
				       cur_entity_data_offset,
				       cur_entity_hdr_offset,
				       cur_entity_size,
				       ext_size);
		if (rc == CUDBG_STATUS_FLASH_FULL && cudbg_init->verbose)
			cudbg_init->print("\n\tFLASH is full... "
				"can not write in flash more\n\n");
	}

	return rc;
}