#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned long avail_in; unsigned long avail_out; unsigned long total_out; void* next_out; void* next_in; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int /*<<< orphan*/  Z_FINISH ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pack_compression_level ; 
 void* FUNC5 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC6(void **pptr, unsigned long size)
{
	git_zstream stream;
	void *in, *out;
	unsigned long maxsize;

	FUNC4(&stream, pack_compression_level);
	maxsize = FUNC2(&stream, size);

	in = *pptr;
	out = FUNC5(maxsize);
	*pptr = out;

	stream.next_in = in;
	stream.avail_in = size;
	stream.next_out = out;
	stream.avail_out = maxsize;
	while (FUNC1(&stream, Z_FINISH) == Z_OK)
		; /* nothing */
	FUNC3(&stream);

	FUNC0(in);
	return stream.total_out;
}