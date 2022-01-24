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
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 void* FUNC5 (unsigned long) ; 

__attribute__((used)) static void *FUNC6(void *data, unsigned long size,
			      int compression_level,
			      unsigned long *compressed_size)
{
	git_zstream stream;
	unsigned long maxsize;
	void *buffer;
	int result;

	FUNC4(&stream, compression_level);
	maxsize = FUNC2(&stream, size);
	buffer = FUNC5(maxsize);

	stream.next_in = data;
	stream.avail_in = size;
	stream.next_out = buffer;
	stream.avail_out = maxsize;

	do {
		result = FUNC1(&stream, Z_FINISH);
	} while (result == Z_OK);

	if (result != Z_STREAM_END) {
		FUNC0(buffer);
		return NULL;
	}

	FUNC3(&stream);
	*compressed_size = stream.total_out;

	return buffer;
}