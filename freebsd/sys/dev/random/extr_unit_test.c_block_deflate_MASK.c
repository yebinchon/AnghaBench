#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t avail_in; size_t avail_out; size_t const total_in; size_t const total_out; int /*<<< orphan*/ * next_out; int /*<<< orphan*/ * next_in; int /*<<< orphan*/ * opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
typedef  TYPE_1__ z_stream ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  Z_DEFAULT_COMPRESSION ; 
 int /*<<< orphan*/  Z_FINISH ; 
 int /*<<< orphan*/  Z_NO_FLUSH ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  myalloc ; 
 int /*<<< orphan*/  myfree ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t const,size_t const,size_t const) ; 

size_t
FUNC5(uint8_t *uncompr, uint8_t *compr, const size_t len)
{
	z_stream c_stream;
	int err;

	if (len == 0)
		return (0);

	c_stream.zalloc = myalloc;
	c_stream.zfree = myfree;
	c_stream.opaque = NULL;

	err = FUNC3(&c_stream, Z_DEFAULT_COMPRESSION);
	FUNC0(err, "deflateInit");

	c_stream.next_in  = uncompr;
	c_stream.next_out = compr;
	c_stream.avail_in = len;
	c_stream.avail_out = len*2u +512u;

	while (c_stream.total_in != len && c_stream.total_out < (len*2u + 512u)) {
		err = FUNC1(&c_stream, Z_NO_FLUSH);
#ifdef DEBUG
		printf("deflate progress: len = %zd  total_in = %lu  total_out = %lu\n", len, c_stream.total_in, c_stream.total_out);
#endif
		FUNC0(err, "deflate(..., Z_NO_FLUSH)");
	}

	for (;;) {
		err = FUNC1(&c_stream, Z_FINISH);
#ifdef DEBUG
		printf("deflate    final: len = %zd  total_in = %lu  total_out = %lu\n", len, c_stream.total_in, c_stream.total_out);
#endif
		if (err == Z_STREAM_END) break;
		FUNC0(err, "deflate(..., Z_STREAM_END)");
	}

	err = FUNC2(&c_stream);
	FUNC0(err, "deflateEnd");

	return ((size_t)c_stream.total_out);
}