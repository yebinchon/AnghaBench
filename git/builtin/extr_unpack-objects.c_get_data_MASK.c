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
typedef  int /*<<< orphan*/  stream ;
struct TYPE_6__ {unsigned long avail_out; void* avail_in; unsigned long total_out; void* next_in; void* next_out; } ;
typedef  TYPE_1__ git_zstream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int has_errors ; 
 void* len ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  recover ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (unsigned long) ; 

__attribute__((used)) static void *FUNC10(unsigned long size)
{
	git_zstream stream;
	void *buf = FUNC9(size);

	FUNC7(&stream, 0, sizeof(stream));

	stream.next_out = buf;
	stream.avail_out = size;
	stream.next_in = FUNC3(1);
	stream.avail_in = len;
	FUNC6(&stream);

	for (;;) {
		int ret = FUNC4(&stream, 0);
		FUNC8(len - stream.avail_in);
		if (stream.total_out == size && ret == Z_STREAM_END)
			break;
		if (ret != Z_OK) {
			FUNC1("inflate returned %d", ret);
			FUNC0(buf);
			if (!recover)
				FUNC2(1);
			has_errors = 1;
			break;
		}
		stream.next_in = FUNC3(1);
		stream.avail_in = len;
	}
	FUNC5(&stream);
	return buf;
}