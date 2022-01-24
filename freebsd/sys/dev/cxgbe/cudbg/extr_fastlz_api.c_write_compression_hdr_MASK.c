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
struct cudbg_buffer {unsigned long size; int /*<<< orphan*/  offset; scalar_t__ data; } ;

/* Variables and functions */
 int FUNC0 (struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC2 (char*) ; 
 unsigned long FUNC3 (unsigned long,...) ; 
 int FUNC4 (struct cudbg_buffer*,int,int /*<<< orphan*/ ,int,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cudbg_buffer*) ; 
 int FUNC6 (scalar_t__,unsigned long,int /*<<< orphan*/ *,...) ; 

int FUNC7(struct cudbg_buffer *pin_buff,
			  struct cudbg_buffer *pout_buff)
{
	struct cudbg_buffer tmp_buffer;
	unsigned long fsize = pin_buff->size;
	unsigned char *buffer;
	unsigned long checksum;
	int rc;
	char *shown_name = "abc";

	/* Always release inner scratch buffer, before releasing outer. */
	rc = FUNC0(pout_buff, 10, &tmp_buffer);

	if (rc)
		goto err;

	buffer = (unsigned char *)tmp_buffer.data;

	rc = FUNC5(pout_buff);

	if (rc)
		goto err1;

	/* chunk for File Entry */
	buffer[0] = fsize & 255;
	buffer[1] = (fsize >> 8) & 255;
	buffer[2] = (fsize >> 16) & 255;
	buffer[3] = (fsize >> 24) & 255;
	buffer[4] = 0;
	buffer[5] = 0;
	buffer[6] = 0;
	buffer[7] = 0;
	buffer[8] = (FUNC2(shown_name)+1) & 255;
	buffer[9] = (unsigned char)((FUNC2(shown_name)+1) >> 8);
	checksum = 1L;
	checksum = FUNC3(checksum, buffer, 10);
	checksum = FUNC3(checksum, shown_name,
				  (int)FUNC2(shown_name)+1);

	rc = FUNC4(pout_buff, 1, 0,
				10+(unsigned long)FUNC2(shown_name)+1,
				checksum, 0);

	if (rc)
		goto err1;

	rc = FUNC6(pout_buff->data, pout_buff->size,
			  &(pout_buff->offset), buffer, 10);

	if (rc)
		goto err1;

	rc = FUNC6(pout_buff->data, pout_buff->size,
			   &(pout_buff->offset), shown_name,
			   (u32)FUNC2(shown_name)+1);

	if (rc)
		goto err1;

err1:
	FUNC1(&tmp_buffer, pout_buff);
err:
	return rc;
}