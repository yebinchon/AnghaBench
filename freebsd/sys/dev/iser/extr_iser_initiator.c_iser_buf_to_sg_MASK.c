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
struct scatterlist {int dummy; } ;
struct iser_data_buf {size_t data_len; int size; struct scatterlist* sgl; } ;

/* Variables and functions */
 uintptr_t PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC0 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*,void*,size_t) ; 

__attribute__((used)) static void
FUNC3(void *buf, struct iser_data_buf *data_buf)
{
	struct scatterlist *sg;
	int i;
	size_t len, tlen;
	int offset;

	tlen = data_buf->data_len;

	for (i = 0; 0 < tlen; i++, tlen -= len)  {
		sg = &data_buf->sgl[i];
		offset = ((uintptr_t)buf) & ~PAGE_MASK;
		len = FUNC0(PAGE_SIZE - offset, tlen);
		FUNC2(sg, buf, len);
		buf = (void *)(((u64)buf) + (u64)len);
	}

	data_buf->size = i;
	FUNC1(sg);
}